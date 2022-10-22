# DevilutionX Assets
DevilutionX 실행을 위한 한글 폰트 리소스

build_font.sh을 실행하면 fonts.mpq 파일이 생성됨 (사이즈를 줄이기 위해 중국어, 일본어 폰트 삭제)

pcx2clx tool이 필요하며, 다음 url에서 source를 구할 수 있음.
https://github.com/diasurgical/devilutionx-graphics-tools/

pcx2clx를 build하기 위해서는 cmake 3.16 이상 gcc-9 필요함

# License
All fonts are under the [SIL Open Font License](LICENSE-SIL.txt),
fonts used are [Noto](https://github.com/googlefonts/noto-cjk)
and [Unifont](https://unifoundry.com/unifont/), with gamepad symbols
from [greatdocbrown](https://greatdocbrown.itch.io/gamepad-ui).

# Ubuntu 18.04 에 cmake 3.18 설치

```
sudo apt-get update
sudo apt upgrade
sudo apt install qt5-default
apt-get install libssl-dev
wget https://github.com/Kitware/CMake/releases/download/v3.18.2/cmake-3.18.2.tar.gz
tar -xvf cmake-3.18.2.tar.gz
cd cmake-3.18.2
./bootstrap 
make
sudo make install
```

# GCC 설치
https://jjeongil.tistory.com/1606
