class cis_benchmarks::redhat7::rule::v_2_1_1::rule_4_0 {
file {'/etc/audit/auditd.conf':
    source => 'puppet:///modules/cis_benchmarks/files/etc/audit/auditd.conf',
    owner  => root,
    group  => root,
    mode   => '0640',
    notify => Service['auditd'],
	}

service {'auditd':
    enable => true,
	}

  file {'/etc/audit/audit.rules':
    source => 'puppet:///modules/cis_benchmarks/files/etc/audit/audit.rules',
    owner  => root,
    group  => root,
    mode   => '0640',
    notify => Service['auditd'],
    }
}
