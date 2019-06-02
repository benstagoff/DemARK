jupyter contrib nbextension install --user
jupyter nbextension enable codefolding/main
jupyter nbextension enable codefolding/edit
jupyter nbextension enable latex_envs
python -m cite2c.install
result=$(python <<EOF
from notebook.services.config.manager import ConfigManager
cm = ConfigManager()
cm.update('cite2c', {'zotero':{"user_id": "5043554","username": "econ-ark","access_token": "XZpH9NsoAZmDMmjLKiy8xMXX"}})
EOF
)
