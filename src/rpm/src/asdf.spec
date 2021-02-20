Name:    asdf
Version: 0.1
Release: 1
Summary: Asdf repository installer
License: Dummy license

%description
Asdf repository installer.

%prep

%build
mkdir -p %{buildroot}%{_sysconfdir}/yum.repos.d/
install -p -m 644 /src/asdf.repo %{buildroot}%{_sysconfdir}/yum.repos.d/%{name}.repo

%files
%{_sysconfdir}/yum.repos.d/%{name}.repo

%changelog
* Fri Feb 19 2021 Firstname Lastname <firstname.lastname@example.com> - 0.1-1
- Asdf repository installer init
