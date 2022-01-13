# expanddevopsview2022
Presentacion y Codigo de "Expand your DevOps View For 2022"  - Sección "Cloud Native Approach using Oracle Functions" - 13 Enero/2022.

Autor: Francisco Javier Moreno - fmorenod@gmail.com

**Descripcion**
Se realiza una consulta SQL compartida para obtener la cantidad de eventos publicados en la pagina web.
Se realiza usando Python 3.6 

- **[Prerequisitos]: 
- Docker, si esta en Windows se recomienda ejecutar el WSL2 y Docker Desktop, luego *TODOS* * los comandos se ejecutaran en la distribucion Linux en el WSL2.
- Fn Server, instalar segun https://github.com/fnproject/tutorials/blob/master/install/README.md
- Crear una cuenta OCI Free Tier en https://www.oracle.com/cloud/free/
- Instalar y configurar el OCI CLI en WSL2.

Pasos:
- Chequeaer ambientes

oci os ns get

docker version
docker ps -aq

fn start -d

fn list context
fn use context

**Boilerplate**
fn init --runtime <language> <Opt_Nombre_Function>
fn init --runtime java --trigger http commit-report
fn init --runtime python helloFunction
fn create app <Nombre_App>
fn create app helloApp

fn delete app helloApp

fn list apps
fn list functions <Nombre_aplicacion> 
fn list triggers <Nombre_aplicacion>
fn list call <Nombre_aplicacion> <Nombre_Funcion> 
fn deploy --app <Nombre_aplicacion> --local
fn deploy --app helloApp --local
fn deploy --verbose --app helloApp --local
docker image ls
fn invoke <Nombre_aplicacion> <Nombre_Funcion> 

echo -n '{"name":"FranciscoMoreno"}'|fn invoke helloApp hellofunction

**Event-Count**
fn create context <nombreContexto> --provider oracle
fn use context <nombreContexto>

fn use context prod
fn update context oracle.compartment-id <compartment>
fn update context oracle.compartment-id ocid1.compartment.oc1..aaaaaaaa4ewy3s376yq5xuvtpwe5nvksw6qjif2qwtor2vjaqcsmd5sw47fq
fn update context api-url https://functions.us-ashburn-1.oraclecloud.com
Del oci.config es necesario obtener el profile o copia de 
fn update context oracle.profile <profile>
fn update context registry <definicionRegion>.ocir.io/<usuario>/
fn update context registry iad.ocir.io/<usuario>/<nombreRepo> << El usuario es el que se trae de la consola Web al hacer el repo, se trae el namespace
fn update context registry iad.ocir.io/idy4hyfbs31o/myapp

docker login iad.ocir.io --username idy4hyfbs31o/oracleidentitycloudservice/francisco.m.moreno --password "OqY2#NN5iO3s-<79}j#E"
fn list context
fn list apps

<Crear Apps en Functions en Red Publica>
fn list config f <nombreApp> <NombreFunction>
fn list config f NombreFunction hello


Simple Lab using Oracle Functions
![Lab](../docs/Lab.png)
