open CInterface

fun diff (n, m) =
  let
    val lib = load_lib "libdiff.so"
    val sym = load_sym lib "difference"
    val diff' = call2 sym (INT, INT) INT
  in
    diff' (n, m) 
  end
