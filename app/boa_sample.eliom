{shared{
open Boa_core
}}

module Start =
struct

  (* A classic standard page *)

  let text_intro =
    let open View in 
    p
      ~a:[a_class ["paragraph"]]
      [
        pcdata
          "Todo List main page"
      ]



  let starter_page () = 
    Boa_skeleton.return
      "Hello !"
      [
        Boa_gui.modal_with_title
          ~classes:["text_center"]
          ~title:"HELLO!"
          [ text_intro ]
      ]

  let start =
    Register.page
      ~path:[]
      starter_page

end
