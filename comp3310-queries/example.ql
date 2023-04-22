/**
 * @name Comp3310 workshop 6 query
 * @kind problem
 * @problem.severity warning
 * @id java/example/empty-block
 */


from MethodAccess call, Method method, MethodAccess call2, Method method2
where
  call.getMethod() = method and
  (
    method.hasName("printStackTrace") and
    method.hasNoParameters() and
    method.getDeclaringType().hasQualifiedName("java.lang", "Throwable")
  )
  or
  call2.getMethod() = method2 and
  method.hasName("println") and
  (
    method2.hasName("getMessage") and
    method2.getDeclaringType().hasQualifiedName("java.lang", "Throwable")
  ) and
  call.getAnArgument() = call2
select call, "hi"
