sfdx force:org:create -s -f config/project-scratch-def.json -d 1
sfdx force:package:install --package es-base-objects@1.0.0-1 -w 20
sfdx force:package:install --package es-base-code@1.0.0-1 -w 20
sfdx force:package:install --package es-base-styles@1.0.0-1 -w 20
sfdx force:package:install --package es-space-mgmt@1.0.0-1 -w 20
sfdx force:source:push

sfdx force:user:permset:assign -n EasySpacesObjects
sfdx force:user:permset:assign -n SpaceManagementApp

sfdx force:data:tree:import --plan ./data/Plan1.json
sfdx force:data:tree:import --plan ./data/Plan2.json

sfdx force:org:open
