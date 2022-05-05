---
theme: gaia
_class: lead
backgroundColor: #fff
backgroundImage: url('https://marp.app/assets/hero-background.svg')
---

![bg left:40% 80%](https://www.open-kilda.org/wp-content/uploads/2018/10/OpenKilda@3x.png)

# Feature Proposal:

#### Gather flow statistics per VLAN selected by a user 

Version 2

---

## API : Create

### Specify selected VLANs by flow create

`POST https://{host}/flows/{flow_id}/`
```json
{
  "flow_id": "f12345678",
  "statistics": {
  	"vlan": [3, 4, n]
  }
  ...
}
```

---

## API : Patch

### Modify VLANs by Patch

`PATCH https://{host}/flows/{flow_id}/`
```json
{
  "flow_id": "f12345678",
  "statistics": {
  	"vlan": [5, 6] <- New VLANs 
  }
  ...
}
```

---

## API : Delete

### Delete VLANs by Patch

`PATCH https://{host}/flows/{flow_id}/`
```json
{
  "flow_id": "f12345678",
  "statistics": {
  	"vlan": [] <- clean
  }
  ...
}
```

---
## Full port flow scenario : Current rules
![Table_Pre Ingress Current](current_table_pre_ingress.png)

---

## Full port flow scenario : Proposed rules

![Table_Pre Ingress New](new_table_pre_ingress.png)

---
## Affected components

- NB
- Flow CRUD + Sync
- Statistics collection and store
- DB layer
- Floodlight
- Production: grafana dashboards
- GUI

---

<!-- _class: lead -->

# Thank you

![](https://cdn.quotesgram.com/img/49/85/901176278-Powerpoint-Presentation-Jokes-1.gif)


