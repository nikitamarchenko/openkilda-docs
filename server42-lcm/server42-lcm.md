# Server42 LCM

# requirements specification

- We have three components, and all of them must be in a consistent state
- If the component is going down, we must restart it and achieve a consistent state
- Order of components restarts or deployment unspecified
- Survive after network issues
- Handle 1m flows
- Handle the situation when a component or network is going down in the middle of state recovering
- Components must work in network isolation
