from flask import Blueprint, render_template

catalogo_bp = Blueprint('catalogo', __name__)

@catalogo_bp.route('/catalogo') 
def catalogo(): 
    return render_template("catalogo.html")