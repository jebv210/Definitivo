from flask import render_template, session, Blueprint, request, url_for, redirect
import mysql.connector
from app.db_config import db_config

login_bp = Blueprint('login', __name__)

@login_bp.route('/login')
def login():
    return render_template('login.html')


@login_bp.route('/datos-login', methods=['GET', 'POST'])
def datos():
    cnx = mysql.connector.connect(**db_config)
    if request.method == 'POST':
        nombres = request.form['Usuario']
        contraseña = request.form['Contraseña']
        cursor = cnx.cursor()
        sql = "SELECT * FROM usuario WHERE NombresUsuario=%s AND ContraseñaUsuario=%s"
        data = (nombres, contraseña)
        cursor.execute(sql, data)
        user = cursor.fetchone()
        cursor.close()
        if user:
            session['usuario'] = {
                'id': user[0],
                'nombre': user[1],
                'rol': user[22]
            }
            if session['usuario']['rol'] == 1:
                return redirect(url_for('admin.admin'))
            return redirect(url_for('home.home'))
        else:
            return "Inicio de sesion fallido"
    return render_template('login.html')