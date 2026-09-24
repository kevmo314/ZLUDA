define amdgpu_kernel void @prefetch(ptr addrspace(4) byref(i64) %"41", ptr addrspace(4) byref(i64) %"42") #0 {
  %"43" = alloca i64, align 8, addrspace(5)
  %"44" = alloca i64, align 8, addrspace(5)
  %"45" = alloca i64, align 8, addrspace(5)
  br label %1

1:                                                ; preds = %0
  br label %"40"

"40":                                             ; preds = %1
  %2 = load i64, ptr addrspace(4) %"41", align 8
  store i64 %2, ptr addrspace(5) %"43", align 8
  %3 = load i64, ptr addrspace(4) %"42", align 8
  store i64 %3, ptr addrspace(5) %"44", align 8
  %4 = load i64, ptr addrspace(5) %"43", align 8
  %"54" = inttoptr i64 %4 to ptr addrspace(1)
  %5 = load i64, ptr addrspace(5) %"43", align 8
  %"55" = inttoptr i64 %5 to ptr
  %"39" = getelementptr inbounds i8, ptr %"55", i64 8
  %6 = load i64, ptr addrspace(5) %"43", align 8
  %"56" = inttoptr i64 %6 to ptr
  %7 = load i64, ptr %"56", align 8
  store i64 %7, ptr addrspace(5) %"45", align 8
  %8 = load i64, ptr addrspace(5) %"44", align 8
  %9 = load i64, ptr addrspace(5) %"45", align 8
  %"57" = inttoptr i64 %8 to ptr
  store i64 %9, ptr %"57", align 8
  ret void
}

attributes #0 = { "amdgpu-ieee"="false" "amdgpu-unsafe-fp-atomics"="true" "denormal-fp-math"="preserve-sign" "denormal-fp-math-f32"="preserve-sign" "no-trapping-math"="true" "target-features"="+wavefrontsize32,-wavefrontsize64,+cumode,+precise-memory" "uniform-work-group-size"="true" }
