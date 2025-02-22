# go_resampler

Library for sound resampling

### To run test use:
```bash
make clearTestDir
make runTest
```
!CARE make runTest may use lots of RAM - you may try to use make runTestSlow

### To run Benchmark use:
```bash
make clearTestDir
make runBenchmark
```

### To run Benchmark for your own wave use:
```bash
make clearTestDir
make addBaseWave # enter absolute path to sf of wave
make runBenchmarkCustomWave
```

## Resample results
|       /        |                              CONST EXPRESSION RESAMPLER                              |                                   SPLINE RESAMPLER                                   |                                    FFT RESAMPLER                                     |                                  FFMPEG RESAMPLING                                   |
|----------------|--------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------|
| 11025 to 8000  | <video src=https://github.com/user-attachments/assets/217be0cf-9b72-4383-b4e8-436696ef74ef> </video> | <video src=https://github.com/user-attachments/assets/6298adb6-215f-42ce-90a9-b23e6469da19> </video> | <video src=https://github.com/user-attachments/assets/3407d80f-4bad-46c6-ba7c-224deaebd204> </video> | <video src=https://github.com/user-attachments/assets/fa74cea7-8800-461a-aa42-babfcb940be7> </video> |
| 16000 to 8000  | <video src=https://github.com/user-attachments/assets/214f38e6-ec5b-493e-a32e-4a67a3e26b4a> </video> | <video src=https://github.com/user-attachments/assets/123dffdd-2967-4485-9ad4-879b36f1d3ca> </video> | <video src=https://github.com/user-attachments/assets/a4b224cd-a56a-495f-850c-eb05ae3b93a7> </video> | <video src=https://github.com/user-attachments/assets/fa74cea7-8800-461a-aa42-babfcb940be7> </video> |
| 44100 to 8000  | <video src=https://github.com/user-attachments/assets/3ce8fc3d-209c-4690-83c7-875a05e1d594> </video> | <video src=https://github.com/user-attachments/assets/f7b8a186-df4e-4a1b-b897-d4658ea79ec1> </video> | <video src=https://github.com/user-attachments/assets/97bd0740-87d8-4b7a-9c5d-27e7530953dd> </video> | <video src=https://github.com/user-attachments/assets/fa74cea7-8800-461a-aa42-babfcb940be7> </video> |
| 48000 to 8000  | <video src=https://github.com/user-attachments/assets/a9be761a-c9d9-454b-ae1d-999dfefb5583> </video> | <video src=https://github.com/user-attachments/assets/a72ef0f8-89cf-4504-b09b-a20d2244d2ec> </video> | <video src=https://github.com/user-attachments/assets/923dafc0-4591-4819-8012-38c03cbd6db1> </video> | <video src=https://github.com/user-attachments/assets/fa74cea7-8800-461a-aa42-babfcb940be7> </video> |
| 8000 to 16000  | <video src=https://github.com/user-attachments/assets/c7d4fbf9-57dc-4b75-81c4-5944fa8b174f> </video> | <video src=https://github.com/user-attachments/assets/e309159a-f12a-4bf2-96e0-24ef4dfea3af> </video> |                                                                                      | <video src=https://github.com/user-attachments/assets/4752b871-5553-4732-953d-a4d33362cf40> </video> |
| 11025 to 16000 | <video src=https://github.com/user-attachments/assets/a0058347-0896-46db-9327-9ae908e08862> </video> | <video src=https://github.com/user-attachments/assets/d7445435-7362-4b6f-8133-b701127affa4> </video> |                                                                                      | <video src=https://github.com/user-attachments/assets/4752b871-5553-4732-953d-a4d33362cf40> </video> |
| 44100 to 16000 | <video src=https://github.com/user-attachments/assets/2bab1cbd-55a1-4fa5-81ec-36bd79a8518b> </video> | <video src=https://github.com/user-attachments/assets/f4c8704c-fd32-495c-822e-4605a6e3d8aa> </video> | <video src=https://github.com/user-attachments/assets/7d88b60c-773c-44f8-ac9d-5ac70504f7d8> </video> | <video src=https://github.com/user-attachments/assets/4752b871-5553-4732-953d-a4d33362cf40> </video> |
| 48000 to 16000 | <video src=https://github.com/user-attachments/assets/a3dfcf05-73c1-4d09-b84f-e4b3ff132670> </video> | <video src=https://github.com/user-attachments/assets/50ea019c-ea37-44ef-914e-53b7e84e8ed7> </video> | <video src=https://github.com/user-attachments/assets/4af8e36d-a444-4d7e-8f31-499f19cdf4c8> </video> | <video src=https://github.com/user-attachments/assets/4752b871-5553-4732-953d-a4d33362cf40> </video> |


*** Care, CONSTEXPR RSM in convertations from 11025 to 8000/16000, from 44100 to 8000/16000 rounds 11025 and 44100 to 11000 and 44000