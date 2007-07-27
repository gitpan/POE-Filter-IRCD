use inc::Module::Install;
name 'POE-Filter-IRCD';
author 'Chris Williams <chris@bingosnet.co.uk>';
license 'perl';
version_from 'lib/POE/Filter/IRCD.pm';
abstract_from 'lib/POE/Filter/IRCD.pm';
build_requires 'Test::More' => 0.47;
requires 'POE' => 0.3202;
WriteAll;
