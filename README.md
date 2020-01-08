ansible-role-xrdp
=========

This role installs xrdp

Requirements
------------

EPEL (RHEL)

Role Variables
--------------

```
user_list:
  - jscherrerl
  - jscherrer
```

Dependencies
------------

geerlingguy.git

Example Playbook
----------------

- hosts: all
  roles:
    - { role: joscherrer.xrdp }

License
-------

MIT

Author Information
------------------

Jonathan Scherrer