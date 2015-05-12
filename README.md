iptables-simplyadrian Cookbook
=========================
This cookbook sets up iptable chain rules for host level firewall per security best practices. This cookbook is designed to be extensible and additional recipes should be built to create a firewall for new roles or services. i.e. web servers, securing ssh, privoxy servers, etc..

Requirements
------------

#### packages
- `iptables` - Official iptables cookbook from opscode: https://supermarket.chef.io/cookbooks/iptables

Attributes
----------
#### iptables-simplyadrian::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['iptables-simplyadrian']['privoxy']['addresses']</tt></td>
    <td>String</td>
    <td>the CIDR or CIDR's you wish to use to retrict iptables further </td>
    <td><tt>empty? utilizing the all_privoxy templates</tt></td>
  </tr>
  <tr>
    <td><tt>['iptables-simplyadrian']['ssh']['addresses']</tt></td>
    <td>String</td>
    <td>the CIDR or CIDR's you wish to use to retrict iptables further </td>
    <td><tt>empty? utilizing the all_ssh templates</tt></td>
  </tr>
  <tr>
    <td><tt>['iptables-simplyadrian']['web']['addresses']</tt></td>
    <td>String</td>
    <td>the CIDR or CIDR's you wish to use to retrict iptables further </td>
    <td><tt>empty? utilizing the all_http and all_https templates</tt></td>
  </tr>
</table>

Usage
-----
#### iptables-simplyadrian::default

To restrict with all current recipes just include `iptables-simplyadrian` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[iptables-simplyadrian]"
  ]
}
```

To configure iptables to allow for the privoxy service include `iptables-simplyadrian::privoxy` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[iptables-simplyadrian::privoxy]"
    ]
}
```
To configure iptables to allow for the ssh service include `iptables-simplyadrian::ssh` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[iptables-simplyadrian::ssh]"
    ]
}
```
To configure iptables to allow for the web service on both ports 80 and 443 include `iptables-simplyadrian::web` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[iptables-simplyadrian::web]"
    ]
}
```

License and Authors
-------------------
Authors: Adrian Herrera
