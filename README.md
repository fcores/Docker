Inicio >>

CREAR UN CONTENEDOR
docker run ubuntu echo 'Hola Mundo'

LISTAR CONTENEDORES VIVOS
docker ps

LISTAR CONTENEDORES TODOS
docker ps -a

VERSION DE DOCKER
docker version

TODO LOS COMANDOS EXISTENTES CON docker --info
      --config string      Location of client config files (default
                           "C:\\Users\\facucores\\.docker")
  -c, --context string     Name of the context to use to connect to the
                           daemon (overrides DOCKER_HOST env var and
                           default context set with "docker context use")
  -D, --debug              Enable debug mode
  -H, --host list          Daemon socket(s) to connect to
  -l, --log-level string   Set the logging level
                           ("debug"|"info"|"warn"|"error"|"fatal")
                           (default "info")
      --tls                Use TLS; implied by --tlsverify
      --tlscacert string   Trust certs signed only by this CA (default
                           "C:\\Users\\facucores\\.docker\\ca.pem")
      --tlscert string     Path to TLS certificate file (default
                           "C:\\Users\\facucores\\.docker\\cert.pem")
      --tlskey string      Path to TLS key file (default
                           "C:\\Users\\facucores\\.docker\\key.pem")
      --tlsverify          Use TLS and verify the remote
  -v, --version            Print version information and quit

Management Commands:
  builder     Manage builds
  buildx*     Docker Buildx (Docker Inc., v0.8.2)
  compose*    Docker Compose (Docker Inc., v2.7.0)
  config      Manage Docker configs
  container   Manage containers
  context     Manage contexts
  extension*  Manages Docker extensions (Docker Inc., v0.2.8)
  image       Manage images
  manifest    Manage Docker image manifests and manifest lists
  network     Manage networks
  node        Manage Swarm nodes
  plugin      Manage plugins
  sbom*       View the packaged-based Software Bill Of Materials (SBOM) for an image (Anchore Inc., 0.6.0)
  scan*       Docker Scan (Docker Inc., v0.17.0)
  secret      Manage Docker secrets
  service     Manage services
  stack       Manage Docker stacks
  swarm       Manage Swarm
  system      Manage Docker
  trust       Manage trust on Docker images
  volume      Manage volumes

Commands:
  attach      Attach local standard input, output, and error streams to a running container
  build       Build an image from a Dockerfile
  commit      Create a new image from a container's changes
  cp          Copy files/folders between a container and the local filesystem
  create      Create a new container
  diff        Inspect changes to files or directories on a container's filesystem
  events      Get real time events from the server
  exec        Run a command in a running container
  export      Export a container's filesystem as a tar archive
  history     Show the history of an image
  images      List images
  import      Import the contents from a tarball to create a filesystem image
  info        Display system-wide information
  inspect     Return low-level information on Docker objects
  kill        Kill one or more running containers
  load        Load an image from a tar archive or STDIN
  login       Log in to a Docker registry
  logout      Log out from a Docker registry
  logs        Fetch the logs of a container
  pause       Pause all processes within one or more containers
  port        List port mappings or a specific mapping for the container
  ps          List containers
  pull        Pull an image or a repository from a registry
  push        Push an image or a repository to a registry
  rename      Rename a container
  restart     Restart one or more containers
  rm          Remove one or more containers
  rmi         Remove one or more images
  run         Run a command in a new container
  save        Save one or more images to a tar archive (streamed to STDOUT by default)
  search      Search the Docker Hub for images
  start       Start one or more stopped containers
  stats       Display a live stream of container(s) resource usage statistics
  stop        Stop one or more running containers
  tag         Create a tag TARGET_IMAGE that refers to SOURCE_IMAGE
  top         Display the running processes of a container
  unpause     Unpause all processes within one or more containers
  update      Update configuration of one or more containers
  version     Show the Docker version information
  wait        Block until one or more containers stop, then print their exit codes


IMAGENES
docker images

DESCARGAR IMAGES
docker pull busybox

A PARTIR DE UNA IMAGEN CONSTRUIR UN CONTENEDOR
docker run -p 8080:80 nginx - con esto emparejo el puerto 8080 con el 80 del contenedor y le agrego el servidor nginx (una alternativa a apache)

A PARTIR DE UNA IMAGEN CONSTRUIR UN CONTENEDOR Y QUE NO ME TOME LA TERMINAL 
docker run -p 8080:80 -d nginx

A PARTIR DE UNA IMAGEN CONSTRUIR UN CONTENEDOR QUE NO ME TOME LA TERMINAL Y LE PUEDA ASIGNAR UN NOMBRE
docker run --name my_web -p 8080:80 -d nginx

CAMBIAR EL NOMBRE A UN CONTENEDOR
docker rename my_web my_web_1

LEVANTAR UN CONTENEDOR CON UBUNTU Y PODER ENTRAR DENTRO- ESTO ENTRA DENTRO DEL CONTENEDOR
docker run --name servidor_ubuntu -it ubuntu

IMAGINATE QUE NECESITAS UN ENTORNO DE DESARROLLO QUE LE TENGO QUE INSTALAR PAQUETES - NECESITO QUE EL CONTENEDOR NO MUERA
docker run -dt centos

AHORA SI QUEREMOS QUE EJECUTE COMANDOS SIN TOMARME LA TERMINAL
docker exec my_web_2 ls

COPIAR UN CONTENIDO DENTRO DE UN CONTENEDOR
docker cp holamundo.py my_web:/usr/share/nginx/html/holamundo.py
cd usr/share/nginx/html/

ACTIVAR UN CONTENEDOR
docker start cfe56d14608e

PAUSAR UN CONTENEDOR
docker start my_web

ELIMINAR UN CONTENEDOR
docker rm -f cfe56d14608e
