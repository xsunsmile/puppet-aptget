
class apt::repo::devstructure {

	$dist = $lsbdistcodename? {
		/lucid|maverick|natty/ => $lsbdistcodename,
		default => 'lucid',
	}

	apt::repository { "devstructure":
		url        => "http://packages.devstructure.com/ubuntu",
		distro     => "${dist}",
		repository => 'main',
	}

	apt::key { "devstructure":
		url => 'http://packages.devstructure.com/keyring.gpg',
	}

}

