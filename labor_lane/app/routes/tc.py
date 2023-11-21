from flask import Blueprint, render_template


tc_bp = Blueprint('tc', __name__)

@tc_bp.route('/tc') 
def tc():
    return render_template ("t_c.html") 