(* Collection of Uri's *)

let make_simple url =
  let service =
    Eliom_service.Http.external_service
      ~prefix:url
      ~path:[]
      ~get_params:Eliom_parameter.unit
      ()
  in Eliom_content.Html5.D.make_uri
       ~service:service
       ()

