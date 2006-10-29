use inc::Module::Install;

name 'POE-Filter-IRCD';
author 'Chris Williams <chris@bingosnet.co.uk>';
license 'perl';
version_from 'lib/POE/Filter/IRCD.pm';
requires 'POE' => 0.3202;
WriteAll;
