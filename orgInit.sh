sfdx force:org:create -s -f config/project-scratch-def.json -d 1
sfdx force:source:push

sfdx force:user:permset:assign -n EasySpacesObjects
sfdx force:user:permset:assign -n SpaceManagementApp

sfdx force:data:tree:import --plan ./data/Plan1.json
sfdx force:data:tree:import --plan ./data/Plan2.json

sfdx force:org:open -p /lightning/setup/ThemingAndBranding/home
