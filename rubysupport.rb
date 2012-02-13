pragma_nosupport

def p(arg)
  print arg
end

def _rbsupport_include(rcvr, value)
  return INLINE_PYTHON("value in rcvr")
end

def _rbsupport_length(rcvr)
  return len(rcvr)
end

def _rbsupport_empty(rcvr)
  return (not rcvr)
end

def _rbsupport_to_a(rcvr)
  return list(rcvr)
end

def _rbsupport_to_s(rcvr)
  return str(rcvr)
end

def _rbsupport_to_i(rcvr)
  return int(rcvr)
end

def _rbsupport_to_f(rcvr)
  return float(rcvr)
end

def _rbsupport_is_a(rcvr, value)
  return isinstance(rcvr, value)
end

def _rbsupport_append(rcvr, value)
  if (rcvr.is_a? INLINE_PYTHON("list"))
    rcvr.append value
  elsif (rcvr.is_a? INLINE_PYTHON("str"))
    rcvr + value
  else
    rcvr.append value
  end
end

def _rbsupport_max(rcvr)
  return INLINE_PYTHON("max(rcvr)")
end

