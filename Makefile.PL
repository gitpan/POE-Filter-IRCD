use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
# Blah!

WriteMakefile(
			  'NAME'	=> 'POE::Filter::IRCD',
			  'PM'		=> { 'Filter-IRCD.pm' => '$(INST_LIBDIR)/IRCD.pm',
				       },
			  'PREREQ_PM' => {
							  'POE'    => 0.06_07,
							 },
			  'VERSION_FROM' => 'Filter-IRCD.pm', # finds $VERSION
			  'dist' => { 'COMPRESS' => 'gzip --best' },
			 );
