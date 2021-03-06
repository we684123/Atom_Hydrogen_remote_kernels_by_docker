# Atom_Hydrogen_remote_kernels_by_docker
用 docker 打包 Jupyter 核心，並給 Atom Hydrogen 連結。    

docker hub -
[we684123/atom_hydrogen_remote_kernels](https://hub.docker.com/repository/docker/we684123/atom_hydrogen_remote_kernels)    

**如果需要，這裡有 [Atom Hydrogen 教學](https://blog.tdccc.com.tw/429/)**。    

# 支援

| 核心(kernels)                            |    支援的語言(Language)    |
| ---------------------------------------- | :------------------------: |
| magicpython                              |        python 3.8.3        |
| [tslab](https://github.com/yunabe/tslab) | TypeScript 3.9、JavaScript |
# 安裝及使用
注意! 請先裝好 [docker](https://docs.docker.com/desktop/)、[Atom](https://atom.io/)、[Hydrogen](https://github.com/nteract/hydrogen) 在來使用。    

**安裝及使用**

```
docker run -it -p 127.0.0.1:8888:8888 we684123/atom_hydrogen_remote_kernels
```
或
```
docker-compose up
```

1. run 完之後會出現類似下圖的東西，請把 token 複製起來，等等會用到。    
b7a93321b0bdd7e0ae4cf05044a8932feef11edafbcf4c6f    
![Imgur](https://imgur.com/uatWE6j.png)

2. 打開 atom Settings -> packages -> Hydrogen 並在下面設定 kernel gateways     
內容請填(token可以不在這裡填入)    
```
[{
  "name": "Remote server",
  "options": {
    "baseUrl": "http://127.0.0.1:8888"
  }
}]
```
![Imgur](https://imgur.com/3mdVwce.png)    
3. 連結遠端核心    
![Imgur](https://imgur.com/Ap0Yk4x.png)    
4. 選擇 "Remote server"    
![Imgur](https://imgur.com/pf2nxdx.png)    
5. 選擇 "用 token 驗證"    
![Imgur](https://imgur.com/rfX4UmN.png)    
6. 填入 token 並 enter    
![Imgur](https://imgur.com/cmB40Mz.png)    
7. 選擇新的會話    
![Imgur](https://imgur.com/pNhQJJh.png)    
8. 選擇你要使用的語言    
![Imgur](https://imgur.com/DNEjM7h.png)    
9. 完成! 執行成功~    
![Imgur](https://imgur.com/d7xYtyn.png)    
