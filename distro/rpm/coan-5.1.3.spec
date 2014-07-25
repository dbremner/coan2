%define name	coan
%define version	5.1.3
%define release	1

Summary	: A tool for analysing preprocessor-based configurations of C or C++ source code
Name		: %{name}
Version		: %{version}
# norootforbuild
  
Release		: %{release}
License		: BSD
Group		: Development/Languages
URL		: http://coan2.sourceforge.net/
Source		: http://sourceforge.net/projects/coan2/files/v%{version}/%{name}-%{version}.tar.gz
BuildRoot	: %{_tmppath}/%{name}-%{version}-root
BuildRequires	: autoconf, automake, perl, gcc-c++ >= 4.3, perl-podlators

%description
Coan is a commandline tool for analysing preprocessor-based configurations of C or C++ source code.
Its principal use is to simplify a body of source code by eliminating any parts that are redundant
with respect to a specified configuration. Dead code removal is an application of this sort.

Coan is most useful to developers of constantly evolving products with large code bases, where
preprocessor definitions and #if-directives are used differentiate progressive releases or parallel
variants of the product. In these settings the upkeep of the product's configuration tree can become
difficult and the incidence of configuration-related defects can become costly. Coan can largely automate
the maintenance of preprocessor-based configurations and the investigation of configuration-related questions.

%prep
%setup -q -n %{name}-%{version}

%build
%configure
make

%check
make check

%install
rm -rf %{buildroot}
make DESTDIR="%{buildroot}" install

%clean
rm -rf %{buildroot}

%files
%defattr(-,root,root,-)
%doc AUTHORS LICENSE.BSD README ChangeLog
%{_bindir}/coan
%{_mandir}/man1/coan.1*

%changelog
* Wed Sep 04 2013 Mike Kinghan imk@burroingroingjoing.com - 5.1.3-1
- Initial package

