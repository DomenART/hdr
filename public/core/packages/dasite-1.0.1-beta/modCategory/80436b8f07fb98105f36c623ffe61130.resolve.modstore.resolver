<?php
if ($object->xpdo) {
	/* @var modX $modx */
	$modx =& $object->xpdo;
	switch ($options[xPDOTransport::PACKAGE_ACTION]) {
		case xPDOTransport::ACTION_INSTALL:
		case xPDOTransport::ACTION_UPGRADE:
			if (!$provider = $modx->getObject('transport.modTransportProvider', array('service_url:LIKE' => '%modstore.pro%'))) {
				$provider = $modx->newObject('transport.modTransportProvider', array(
					'name' => 'modstore.pro',
					'service_url' => 'http://modstore.pro/extras/',
					'username' => '',
					'api_key' => '',
					'description' => 'Repository of modstore.pro',
					'created' => time(),
				));
				$provider->save();
			}
			break;
		case xPDOTransport::ACTION_UNINSTALL:
			break;
	}
}
return true;