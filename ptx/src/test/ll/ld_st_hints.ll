define amdgpu_kernel void @ld_st_hints(ptr addrspace(4) byref(i64) %"55", ptr addrspace(4) byref(i64) %"56") #0 {
  %"57" = alloca i64, align 8, addrspace(5)
  %"58" = alloca i64, align 8, addrspace(5)
  %"59" = alloca i64, align 8, addrspace(5)
  %"60" = alloca i32, align 4, addrspace(5)
  %"61" = alloca i32, align 4, addrspace(5)
  %"62" = alloca i32, align 4, addrspace(5)
  %"63" = alloca i32, align 4, addrspace(5)
  br label %1

1:                                                ; preds = %0
  br label %"54"

"54":                                             ; preds = %1
  %2 = load i64, ptr addrspace(4) %"55", align 8
  store i64 %2, ptr addrspace(5) %"57", align 8
  %3 = load i64, ptr addrspace(4) %"56", align 8
  store i64 %3, ptr addrspace(5) %"58", align 8
  store i64 0, ptr addrspace(5) %"59", align 8
  %4 = load i64, ptr addrspace(5) %"57", align 8
  %"83" = inttoptr i64 %4 to ptr addrspace(1)
  %5 = load i32, ptr addrspace(1) %"83", align 4
  store i32 %5, ptr addrspace(5) %"60", align 4
  %6 = load i64, ptr addrspace(5) %"57", align 8
  %"84" = inttoptr i64 %6 to ptr addrspace(1)
  %"43" = getelementptr inbounds i8, ptr addrspace(1) %"84", i64 4
  %7 = load i32, ptr addrspace(1) %"43", align 4
  store i32 %7, ptr addrspace(5) %"61", align 4
  %8 = load i64, ptr addrspace(5) %"57", align 8
  %"85" = inttoptr i64 %8 to ptr addrspace(1)
  %"45" = getelementptr inbounds i8, ptr addrspace(1) %"85", i64 8
  %9 = load i32, ptr addrspace(1) %"45", align 4
  store i32 %9, ptr addrspace(5) %"62", align 4
  %10 = load i64, ptr addrspace(5) %"57", align 8
  %"86" = inttoptr i64 %10 to ptr addrspace(1)
  %"47" = getelementptr inbounds i8, ptr addrspace(1) %"86", i64 12
  %11 = load atomic i32, ptr addrspace(1) %"47" syncscope("agent-one-as") monotonic, align 4
  store i32 %11, ptr addrspace(5) %"63", align 4
  %12 = load i64, ptr addrspace(5) %"58", align 8
  %13 = load i32, ptr addrspace(5) %"63", align 4
  %"87" = inttoptr i64 %12 to ptr addrspace(1)
  store i32 %13, ptr addrspace(1) %"87", align 4
  %14 = load i64, ptr addrspace(5) %"58", align 8
  %"88" = inttoptr i64 %14 to ptr addrspace(1)
  %"49" = getelementptr inbounds i8, ptr addrspace(1) %"88", i64 4
  %15 = load i32, ptr addrspace(5) %"62", align 4
  store i32 %15, ptr addrspace(1) %"49", align 4
  %16 = load i64, ptr addrspace(5) %"58", align 8
  %"89" = inttoptr i64 %16 to ptr addrspace(1)
  %"51" = getelementptr inbounds i8, ptr addrspace(1) %"89", i64 8
  %17 = load i32, ptr addrspace(5) %"61", align 4
  store i32 %17, ptr addrspace(1) %"51", align 4
  %18 = load i64, ptr addrspace(5) %"58", align 8
  %"90" = inttoptr i64 %18 to ptr addrspace(1)
  %"53" = getelementptr inbounds i8, ptr addrspace(1) %"90", i64 12
  %19 = load i32, ptr addrspace(5) %"60", align 4
  store i32 %19, ptr addrspace(1) %"53", align 4
  ret void
}

attributes #0 = { "amdgpu-ieee"="false" "amdgpu-unsafe-fp-atomics"="true" "denormal-fp-math"="preserve-sign" "denormal-fp-math-f32"="preserve-sign" "no-trapping-math"="true" "target-features"="+wavefrontsize32,-wavefrontsize64,+cumode,+precise-memory" "uniform-work-group-size"="true" }
