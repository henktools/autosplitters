state("Descenders") {
  int state_stack_size : "mono.dll", 0x001f60f0, 0x32c, 0x004, 0x164, 0x018, 0x0e4;
}

init {
  // Working-ish pointers:
  // - "mono.dll", 0x0020a504, 0x7b4, 0x788, 0x090, 0x0fc, 0x00c;

  vars.ENVIRONMENT_SELECT_STACK_SIZE = 4;
  vars.LOADING_STACK_SIZE = 6;
}

start {
  return current.state_stack_size == vars.LOADING_STACK_SIZE;
}

isLoading {
  return current.state_stack_size == vars.LOADING_STACK_SIZE;
}
