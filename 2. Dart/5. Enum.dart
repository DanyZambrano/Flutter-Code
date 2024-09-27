/* 
  Enum
 
*/

enum cursos {mobile, web, backend, cloud}

void main() {

  cursos tipo = cursos.mobile;
 
 switch (tipo) {
    case cursos.mobile:
      print("mobile Siiii");
      break;

    case cursos.web:
      print("web ok");
      break;

    case cursos.backend:
      print("backend ok");
      break;

    case cursos.cloud:
      print("cloud mas o menos");
      break;

    default:
      print("ningun curso");
  }
  
}

