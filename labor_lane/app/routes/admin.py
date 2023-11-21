from flask import Blueprint, render_template, session, redirect, url_for

admin_bp = Blueprint('admin', __name__)




@admin_bp.route('/admin')
def admin():
    if 'usuario' in session:
        nombre = session['usuario']['nombre']
    return render_template('admin.html', nombre=nombre)

@admin_bp.route('/registrar-admin')
def registrar_admin():
    if 'usuario' in session:
        nombre = session['usuario']['nombre']
    return render_template('registro_admin.html', nombre=nombre)

@admin_bp.route('/registro-trabajador')
def resgitrar_trabajador():
    return redirect(url_for('formulario.formulario'))