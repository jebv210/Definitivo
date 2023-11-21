from flask import Blueprint, render_template, session, url_for
import mysql.connector
from app.db_config import db_config

home_bp = Blueprint('home', __name__)

@home_bp.route('/') 
def home(): 
    if 'usuario' in session:
        id_usuario = session['usuario']['id']

        cnx = mysql.connector.connect(**db_config)
        cursor = cnx.cursor(dictionary=True)

        # Obtener el nombre de la imagen asociada al usuario
        sql = 'SELECT NombreImagen FROM usuario WHERE IdUsuario = %s'
        cursor.execute(sql, (id_usuario,))
        result = cursor.fetchone()

        cursor.close()
        cnx.close()

        url_imagen = None
        if result and 'NombreImagen' in result and result['NombreImagen']:
            nombre_imagen = result['NombreImagen']
            # Construir la URL completa de la imagen
            url_imagen = url_for('perfilcliente.serve_image', filename=nombre_imagen)
        else:
            url_imagen = url_for('perfilcliente.serve_image', filename='logo.png')

        return render_template('home.html', sesion=session['usuario'], rol = session['usuario']['rol'], url_imagen=url_imagen)
    return render_template('home.html') 

