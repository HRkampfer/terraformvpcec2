En la carpeta vpcec2 se encuentra la infraestructura implementada
con la vpc y la ec2 creadas. Se incluye la genreación de una SSH key 
para poder ingresar a la ec2 que se encuentra en una subred pública. Todos
los módulos fueron creados.

En la carpeta compete-vpc se encuentra implementada la VPC de la 
carpeta "complete-vpc" de los modulos de aws-vpc ubicados en el repositorio
de git hub. Además se implementó la creación de una EC2 que forma parte de 
esa VPC. El módulo de VPC es del repositorio de aws-terraform y el módulo 
de la EC2 fue creada.


Función NO. 1:

element() function:

element(list, index):
Esta función recupera un elemento de una lista. Por ejemplo si una lista de 
elementos está ubicada en un array, se puede elegir un elemento/dato específico
de esa lista, mediante el número que ese dato represente en el índice del array.



Función NO. 2:

locals {
  name_suffix = "${var.resource_tags["project"]}-${var.resource_tags["environment"]}"
}

Esta funcionalidad es muy util porque simplifica la configuración de terraform y evita la duplicación. 
Por ejemplo, se pueden definir ciertos valores o variables  en un local como se muestra arriba y luego
utilizar una línea de codigo mas pequeña como la siguiente vpc-${local.name_suffix} para poder colocar
tags a un recurso en específico. Esta funcionalidad se tiede a incluir al inicio del archivo main.tf y 
ayuda a tener una infraestructura de código mas limpia, transparente y simplicada.


Función NO. 3:

count= 4

Esta funcionalidad es muy útil porque automatiza la creación de módulos o recursos. Solo basta con colocar 
count y el número o la línea de código que refleja el número de veces que quiero que un recurso o modulo 
sea creado. 