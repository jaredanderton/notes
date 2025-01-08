

### 2024-06-10

Load Balancer -
Anti-DDoS, threat detection, header validation

Syncroncity (Ruby)
- Looks at client configurations
    - (Async stuff happens prior to proxying path)
- Proxy requests to
- Path
    - RealTime Data
    - Connector
        - Per client
        - (lots of boiler plate)
        - Accessor (3rd party adapter)
            - Per service
        - Only config yaml is specific to them

-
- Abacus
- Persona
-

Realtime clients
Push data to up (true up in batches also)
Some are API integration

Batcave
- Configuration center
- Per env
- If I ever see base url as IP & port its not on K8s
- Super useful to make sure you are checking the right place for debugging

Log stash
Path upstream - external client api calls (from ? To clients)
MDX upstream - Internal calls (from syncronity to other services)

- Sometimes you have have to use the client guid, instead of client id (slug), because logs don’t appear totally.
- Using guid, you get the full life cycle of requests (open search)
    - Can also use the session trace id to filter requests

Pretty common that we have a combo of real-time + on-demand

Dev proxy is where you go to log into bat cave


Environments
- Sand Sandbox
    - Messed with at any point in time.
    - Rare to test/do much in sand b/c it can break (and not get fixed)
    - Easy for devs to test something against
- QA
    - QA owns, we don’t get to touch it
    -
- Int Integration
    - Basically UAT (don’t want it getting messed up)
    - Test in it frequently
    - Last step before prod
    - People pay a lot of attention to it
- Prod


Mobile Tech Stack
cocos
Proprietary cocos Framework, leveraging tons of libraries
Monolith
- Have tried other approaches. Landed monolith, b/c it was easier to manage different clients deciding when to upgrade to latest version of core/helios
- Localized
- Customized team
- Clients will pay for a full team to pay
    - Billy heavily involved if something if core vs dedicated team

Conan is package manager for cocos
Fact check this: layers of “ineheritance”
- Src/mmx, Extended by
- Src/_internal is the next layer, Extended by
- Institutions/{slug}


### 2024-06-13
Cannot kick off `Persona::` jobs, so we know it was a job
Path connectors
- individual repos 
- very straight forward code 
- Java (some Kotlin, mostly Java)

Example of inter-service comms
Ultraman (java codebase for GCU propietary stuff GCU's connector)
Snaglock ( paymentis)
In the path SDK (all connectors extend)
  - some level of messaging
  - NATS (in memory message queuing system (not silly named) - nats.io)
    - lcoal & prod 
    - blocking (like Rabbit, except its blocking)

Envs
- Sand never connect to clients - really about infra, instead of data 
- QA -  
- Int  - modeled just like prod (mock prod).
  - Common prob. FIServ has a cert env and a dev. Fiserv will break something for dev, we have to switch over to cert.
    - FiServe "were testing something on cert. need the data to be the same. please dont hit cert anymore"
    
Argo
- is wht er use for infrastuture or hardware logs (cpu/mem (also in DD))
- Also we can see config
- see envs and pods, etc 




