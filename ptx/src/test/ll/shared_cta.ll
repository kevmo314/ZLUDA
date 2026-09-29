@shared_mem = external addrspace(3) global [16 x i8], align 8

define amdgpu_kernel void @shared_cta(ptr addrspace(4) byref(i64) %"50", ptr addrspace(4) byref(i64) %"51") #0 {
  %"52" = alloca i64, align 8, addrspace(5)
  %"53" = alloca i64, align 8, addrspace(5)
  %"54" = alloca i32, align 4, addrspace(5)
  %"55" = alloca i64, align 8, addrspace(5)
  %"56" = alloca i64, align 8, addrspace(5)
  %"57" = alloca i32, align 4, addrspace(5)
  br label %1

1:                                                ; preds = %0
  br label %"49"

"49":                                             ; preds = %1
  %2 = load i64, ptr addrspace(4) %"50", align 8
  store i64 %2, ptr addrspace(5) %"52", align 8
  %3 = load i64, ptr addrspace(4) %"51", align 8
  store i64 %3, ptr addrspace(5) %"53", align 8
  store i32 ptrtoint (ptr addrspace(3) @shared_mem to i32), ptr addrspace(5) %"54", align 4
  %4 = load i64, ptr addrspace(5) %"52", align 8
  %"77" = inttoptr i64 %4 to ptr addrspace(1)
  %5 = load i64, ptr addrspace(1) %"77", align 8
  store i64 %5, ptr addrspace(5) %"55", align 8
  %6 = load i64, ptr addrspace(5) %"55", align 8
  store i64 %6, ptr addrspace(3) @shared_mem, align 8
  %7 = load i32, ptr addrspace(5) %"54", align 4
  %"79" = inttoptr i32 %7 to ptr addrspace(3)
  %"43" = getelementptr inbounds i8, ptr addrspace(3) %"79", i64 8
  %8 = load i64, ptr addrspace(5) %"52", align 8
  %"80" = inttoptr i64 %8 to ptr addrspace(1)
  %9 = load i64, ptr addrspace(1) %"80", align 8
  store i64 %9, ptr addrspace(3) %"43", align 8
  %10 = load i32, ptr addrspace(5) %"54", align 4
  %"81" = inttoptr i32 %10 to ptr addrspace(3)
  %"45" = getelementptr inbounds i8, ptr addrspace(3) %"81", i64 8
  %11 = atomicrmw add ptr addrspace(3) %"45", i32 1 syncscope("agent-one-as") monotonic, align 4
  store i32 %11, ptr addrspace(5) %"57", align 4
  %12 = load i64, ptr addrspace(3) @shared_mem, align 8
  store i64 %12, ptr addrspace(5) %"55", align 8
  %13 = load i32, ptr addrspace(5) %"54", align 4
  %"83" = inttoptr i32 %13 to ptr addrspace(3)
  %"48" = getelementptr inbounds i8, ptr addrspace(3) %"83", i64 8
  %14 = load i64, ptr addrspace(3) %"48", align 8
  store i64 %14, ptr addrspace(5) %"56", align 8
  %15 = load i64, ptr addrspace(5) %"55", align 8
  %16 = load i64, ptr addrspace(5) %"56", align 8
  %"71" = add i64 %15, %16
  store i64 %"71", ptr addrspace(5) %"55", align 8
  %17 = load i64, ptr addrspace(5) %"53", align 8
  %18 = load i64, ptr addrspace(5) %"55", align 8
  %"84" = inttoptr i64 %17 to ptr addrspace(1)
  store i64 %18, ptr addrspace(1) %"84", align 8
  ret void
}

attributes #0 = { "amdgpu-ieee"="false" "amdgpu-unsafe-fp-atomics"="true" "denormal-fp-math"="preserve-sign" "denormal-fp-math-f32"="preserve-sign" "no-trapping-math"="true" "target-features"="+wavefrontsize32,-wavefrontsize64,+cumode,+precise-memory" "uniform-work-group-size"="true" }
