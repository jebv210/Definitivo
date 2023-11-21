from app.routes.home import home_bp
from app.routes.login import login_bp
from app.routes.formulario import formulario_bp
from app.routes.catalogo import catalogo_bp
from app.routes.perfilcliente import perfilcliente_bp
from app.routes.tc import tc_bp
from app.routes.crud import crud_bp
from app.routes.logout import logout_dp
from app.routes.admin import admin_bp



def init_app(app):
    app.register_blueprint(home_bp)
    app.register_blueprint(login_bp)
    app.register_blueprint(formulario_bp)
    app.register_blueprint(catalogo_bp)
    app.register_blueprint(perfilcliente_bp)
    app.register_blueprint(tc_bp)
    app.register_blueprint(crud_bp)
    app.register_blueprint(logout_dp)
    app.register_blueprint(admin_bp)
