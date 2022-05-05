# Feature Proposal:
# Gather flow statistics per VLAN selected by a user

---

## Full port flow scenario : Current rules
![Table_Pre Ingress Current](current_table_pre_ingress.png)

---

## Full port flow scenario : Proposed rules

![Table_Pre Ingress New](new_table_pre_ingress.png)

---

## VLAN flow scenario : Current rules
![Table Ingress Current](current_table_ingress.png)

---

## VLAN flow scenario : Proposed rules

![Table Ingress new](new_table_ingress.png)


CONS: Probably we need shared meter here

---

## Proposal: Create the third table dedicated to statistics

![Table Stats new](new_table_stats.png)


CONS: Need additional check if we have the ability to do that

---

## Questions:

- Should we provide an API for getting those statistics for a user?
- Do we need stats for VLAN flows?
- What do you think about a dedicated table for this feature?
