from flask import Blueprint, session, redirect, url_for

logout_dp = Blueprint('logout', __name__)

@logout_dp.route('/logout')
def logout():
    session.pop('usuario', None)
    return redirect(url_for('home.home'))