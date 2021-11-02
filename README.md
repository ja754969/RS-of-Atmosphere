---
title: '大氣遙測-NTOU MEI Curriculum mapping'
---
:::warning
>>>[<<< 回到 Curriculum mapping](/wYnQU277R3-kmL1UWGt8bA)
:::
# 大氣遙測
:::warning
[Google Drive](https://drive.google.com/open?id=1s-xpP2aECi5Gu0unQn9htsIWqSh736Zw&authuser=00781035%40email.ntou.edu.tw&usp=drive_fs)
:::
- [name=Yu-Hao Tseng]  
- [time=Sat, Sep 25, 2021 10:44 PM]  
- [TOC]  
- 上課用書 : 大氣衛星遙測學 (曾忠一 著)  
- GitHub   


---
## Map
1. Introduction   
2. Principle of radiation transfer  
3. Absorption by atmospheric gases 
4. Cloud mapping   
5. Radiation detectors   
6. Application and characteristic of window bands   
7. Sea surface temperature   
8. Monitoring of atmospheric constituents  

---
## Week2 : Introduction
- Introduction  
---
大氣遙測(碩) Week2 part1  
{%youtube nGoFHzzYrgQ %}  

---
大氣遙測(碩) Week2 part2  
{%youtube jDcasaz4xrk %}  

---
ISS 國際太空站  

---
廖國男 : An Introduction to Atmospheric Radiation  

---
### Instruments
- 氣象雷達  
- 激光雷達 : 測空品 發射綠光後看反射強度決定懸浮微粒的厚度與濃度  
- 都卜勒雷達  
- 氣象衛星  

---
遙測上的定義，大氣層厚度大約100 km

---
繞極軌道衛星 : 屬於太陽同步衛星(觀測範圍大約2000 km)，一天早晚看同一地點2次(紅外光波段)

---
地球同步衛星 : 每 10 mins 紀錄一次，觀測範圍為 $1\over4$的地表面積。

---
遙測的衛星至少都距地表600km以上，不會受到天氣影響，因為地面上的天氣現象(颱風、積雨雲)最多只發生在對流層頂。

---
## Week3 : Chapter1 大氣遙測與氣象衛星
大氣遙測 Week3 part1
{%youtube l3idbiZVXVE %}

---
大氣遙測 Week3 part2
{%youtube dQCRiBjOt9M %}

---
大氣遙測 Week3 part3
{%youtube y1EGgVzYLU0 %}

---
## Week4 : Chapter1 大氣遙測與氣象衛星
###  Chapter1 氣象衛星
---
#### 繞極軌道衛星(太陽同步衛星)
衛星具有轉動慣量，繞地球的方向和速度一樣，因地球會自轉，所以衛星可以逐漸觀測到全球範圍。
如果繞極軌道衛星繞一圈的週期為120分鐘(2 hours)，而地球每小時轉$15^{^\circ}$，則下一個昇交點的經度和上一個昇交點的經度差距為$30^\circ$

$2 hours \times 15 ^\circ/hours = 30^\circ$

---
#### 地球同步衛星


---
### 衛星位置搜尋
* https://in-the-sky.org/satmap_worldmap  
* https://www.n2yo.com/  

---
###  Chapter2 輻射傳遞原理

---
### Homework 2
![](https://i.imgur.com/8xSKQqj.jpg)
找一顆繞極軌道衛星和一顆地球同步衛星的資料。

---
## Week 5 : Chapter2 輻射傳遞原理
2021/10/19  
- 立體角   
- 光子分布函數與輻射參數 (立體角不為0)  
- 平行光束輻射 (立體角為0)  
- 散射和吸收的觀念  

---
### Chapter 2.1.2
- 光子分布函數 $f_\nu$ (光子數目密度)
    - 因次 : $個數\over{體積-波數-立體角}$
    - 定義 : 某一時刻，單位體積內，屬於$d\nu$ $d\Omega$ (波數在$\nu$和$\nu+d\nu$之間，並在以單位向量$\hat{\Omega}$為中心的立體角元素$d\Omega$內運動)，的光子個數
- 單色輻射強度 $I_\nu$ 
    - 因次 : $能量\over{面積-時間-波數-立體角}$
    - 定義 : 
- 總強度 $I$
    - 因次 : $能量\over{面積-時間-立體角}$
    - 定義 : 將單色輻射強度$I_\nu$對所有波數積分
- 單色輻射強度 $I_\lambda$ 
    - 因次 : $能量\over{面積-時間-波長-立體角}$
    - 定義 :
- 單色輻射強度 $I_\tilde{\nu}$ 
    - 因次 : $能量\over{面積-時間-頻率-立體角}$
    - 定義 :
- 單色輻射通量密度 $F_\nu$ 
    - 因次 : $能量\over{面積-時間-波數}$
    - 定義 : 單位時間內通過單位面積來自所有方向的單位波數的能量
- 總通量密度 $F$ 
    - 因次 : $能量\over{面積-時間}$
    - 定義 : 單位時間內通過單位面積來自所有方向的單位波數的能量
- 單色輻射通量密度 $F_\lambda$ 
    - 因次 : $能量\over{面積-時間-波長}$
    - 定義 : 單位時間內通過單位面積來自所有方向的單位波長的能量
- 單色輻射通量密度 $F_\tilde{\nu}$ 
    - 因次 : $能量\over{面積-時間-頻率}$
    - 定義 : 單位時間內通過單位面積來自所有方向的單位頻率的能量
- 輻射功率 $f$ 
    - 因次 : $能量\over時間$
    - 定義 : 單位時間內通過某一定面積的總輻射能
    - $f= \int_{}^{} F \,dA$

---
### Chapter 2.1.3

- 太陽通量密度 $S_{\nu o}$ 
    - 因次 : $能量\over{面積-時間-波數}$
    - 定義 : 大氣層頂處垂直於陽光入射方向的面積元素所接收到的太陽通量密度
    - $S_{\nu o}=I_{\nu o}\times\Omega_o$
- 太陽常數 $\bar{S_{o}}$ 
    - 因次 : $能量\over{面積-時間-波數}$
    - 定義 : 日地平均距離處，垂直於陽光入射方向的單位面積上，在單位時間內所接收到的太陽能量。

---
### Chapter 2.1.4 散射與吸收

---
## Week 6 : Chapter2 輻射傳遞原理
2021/10/26

---
### Chapter 2.1.4 散射與吸收


---
### Chapter 2.2.1 普朗克定律



---
## Week 7 : Chapter2 輻射傳遞原理
2021/11/2

---
### Chapter 2.3.2 完全熱力平衡與局部熱力平衡


---
### Chapter 2.4.1 表面的反射

---
### Chapter 2.4.2 表面的吸收與放射


---
### Chapter 2.4.3 表面的其他輻射特性



---
### Chapter 2.5 平行平面大氣中的輻射傳遞方程






























---
{%hackmd SybccZ6XD %}
###### tags: `NTOU` `courses` `1101` 
