# Spring-Microservices-In-Action with Docker
책을 따라하는 것보다. 내 것으로 만드는게 더 중요하다.
* 참고도서 : 스프링 마이크로서비스 공작소 (존 카넬/ 정성권/ 길벗/ 2018)
* 이전 프로젝트 : https://github.com/chrisna2/Spring-Microservices-In-Action

```
이클립스 임포트 방법
1. 일단 URL복사
2. 임포트 > git URL > existing project > 폴더 1개로 임포트된것 확인
3. 다시 임포트 > workspace director import > 1개 폴더로 임포트된 경로 디렉토리 선택
4. 하위프로젝트 나열된 것 확인 후 임포트
5. 처음 폴더 1개로 임포트된것 삭제 (실제 삭제 아님!)
```

# 프로젝트 생성 이유
8장 이후부터 실행을 확인하기 위해서 기존 로컬에서 msa를 실행 한 것과 달리 docker를 통해 실행하는 것으로 방향을
전환 하였다. 8장에 책에서 제시된 kafka와 redis, 그리고 zookeeper의 실행의 기본 조건을 따르기 위함이었다.
따라서 이전처럼 STS를 통해 로컬에서 실행은 불가능하고 프로젝트 실행을 확인 하기 위해서는 Docker를 통해 실행하여야 한다.

# 여기서 구현된 것들
1. 스프링 클라우드 컨피그 서버
2. 서비스 디스커버리 : 유레카 서버
3. 히스트릭스, 클라이언트 회복성 패턴
4. 주울(Zuul) 서비스 게이트웨이 서버
5. Oauth2 보안 서버 구성 (Master 브랜치) -> 실행 못하게 막음
6. 메세징 아키텍트 구성 (Kafka, Zookeeper)
7. 레디스 분산 캐싱 구성
8. 페이퍼트레일을 이용한 로깅 조회
9. 오픈집킨 서버를 이용한 분산추적 환경 구성 

# 책과 다른점
1. 책에서 license / organization 서비스가 여기서 harang / concept / msgharang / msgconcept 서비스로 변경되었다.
2. 책에서는 1개의 database를 사용하였으나 여기서 2개의 데이터 베이스(postgreSql, mariaDB) 사용하였다.
3. 서비스별로 사용하는 데이터 베이스가 분리되었다. harang, msgharang(mariaDB), concept,msgconcept(postgreSql)
  3-1 (추가) 책에서 제공한 docker-compse에서는 해당 테이블의 스키마의 volume이 설정되어있지 않았다. DB 볼륨을 추가했다. 
      컨테이너를 내려도 데이터가 상실하지 않는다. 사전 작업으로 docker에 로컬 볼륨을 추가하는 작업을 설정해야 한다.
4. JPA를 사용하는 책과는 달리 여기선 Mybatis를 사용하여 데이터를 호출한다.
5. DTO/VO 를 통해 데이터 객체를 따로 구현한 책과는 달리 여기선 오로지 Map/HashMap을 기준으로 데이터 객체를 구현하였다.
6. 이벤트 챕터와 시큐리티 챕터 별로 프로젝트가 분리된 것과 달리 여기선 같이 구성은 해놓았다. 그러나 docker-compose.yml에 해당 기능이 실행되지 않도록 막았다. 현재 같이 실행하면 충돌난다. 7장의 시큐리티를 같이 적용 하고 싶다면 추가 작업이 필요한 것 같다.
7. 레디스 파트에서 책에서 제시된 설정은 스프링 부트 2 버전 전의 이야기다(deprecated). 최신버전에 맞게 적용 처리 하였다.
8. 책에서는 따로 집킨 서버를 구성 했으나 현재 스프링에서는 집킨 서버가 불필요하여 해당 서비스는 구성하지 않았다. 대신 zipkin docker 이미지로 서버를 구성하였다.

# 삽질로그 
* 책에서 언급되지 않아 추가로 작업을 진행 해야 했던 점
* 한참을 몰라 해매다 원인을 나중에 발견한 점
1. docker-compose.yml에 대해 설명이 부족해서 찾아가서 공부 해야 했다. docker에 대해 추가적으로 공부를 진행 해야 한다.
2. dockerfile에 대해 설명이 없었고, 그외 docker-compose로 컨테이서 실행시 각 컨테이너 마다 내제되어 있던 run.sh 쉘 스크립트 파일의
존재를 인지 하지 못해 실행에 대한 삽질을 지속 해야 했다.
3. 기존에 porperties 파일을 모두 yml 파일로 변환 하였다. run.sh파일에 properties 설정 명령이 인식 되고 있지 않았다. 자동변환을 하다보니 관련 설명 주석이 사라졌다. 필요한 주석은 추후 추가 해야 될것 같다.

# 프로젝트를 진행하면서 추가로 배우게 된 것들
1. Docker (이게 제일 크다.) -> 사용한 docker는 윈도우 버전 docker다
2. Shell
3. Linux -> 각각의 컨테이너의 내부를 확인하기 위해서는 리눅스 명령어를 알아야 했다.

# windows docker -> linux docker [branch : mylinux]
> 윈도우 도커로는 실제 웹 배포 환경을 구축하기 대단히 어려워서 가상화 서버를 통해 배포 시스템을 구축해 보기로 했다

1. vmware로 centos 가상화 구축
2. 리눅스 docker 설치
  ```
  1. Install => yum install docker
  2. 서비스 실행 => service docker start
  3. 부팅시 자동 실행 설정 => chkconfig docker on
  ```
3. 필요한 프로그램 설치 : git, maven (지금까진 이정도면 충분하다.)
4. git clone https://github.com/chrisna2/msa_in_docker.git
5. mvn clean package docker:build
6. [수정 지점] : docker-compose 파일의 볼륨을 설정할 경우 
> window-docker에는 host volume을 외부 볼륨(external)으로 따로 경로설정없이 이름으로 구성
```
volumes:
  postgres_data:
    external: true  
  mariadb_data:
    external: true
<중략>   
  mariadb:
      image: mariadb:10.4
      ports:
        - "3306:3306"
      volumes:
        - mariadb_data:/var/lib/mysql
<postgers 도 동일>
-> 이렇게 했던 이유는 windows host 경로에 정상적으로 DB Data가 입력되지 않았음
```

> 리눅스에서는 해당 볼륨에 host경로:container경로로 정석대로 설정함 다만 여기서도 권한 문제가 발생하여 volume 경로 끝에 :z를 붙임
```
<외부 볼륨은 삭제처리>
  mariadb:
      image: mariadb:10.4
      user: root
      ports:
        - "3306:3306"
      volumes:
        - /mydev/database/mariadb:/var/lib/mysql:z
      environment:
        - MYSQL_ROOT_PASSWORD=1111
        - MYSQL_USER=harang
        - MYSQL_PASSWORD=1111
        - MYSQL_DATABASE=harang
 <postgers 도 동일>       
```
7. mariaDB docker 컨테이너 run 이후 외부에서 접속하기 위해 처리해야할 절차.
> Access denied for user 'harang'@'192.168.159.1' (using password: YES)
```
> docker ps
> docker exec -it <DB컨테이너명> bash
(ex : docker exec -it  msa-sa00-bnkdocker_mariadb_1 bash )
> > mysql
> > GRANT ALL PRIVILEGES ON harang.* TO '아이디'@'111.222.33.44' IDENTIFIED BY '패스워드'; [이렇게하면 특정 아이피만 허용]
> > GRANT ALL PRIVILEGES ON harang.* TO '아이디'@'%' IDENTIFIED BY '패스워드'; [이렇게하면 모든 아이피 접속 허용]

이렇게 안하면 가상머신을 벗어나서 DB에 접속이 되지 않는다.
```
8. postgreSql docker 컨테이너 run 이후 외부에서 접속하기 위해 처리해야할 절차.
> FATAL: no pg_hba.conf entry for host "", user "", database "postgres", SSL off
```
위와는 다르게 이건 직접 파일을 수정해야 한다. 반드시 volume 설정해야한다는 전제조건이 깔림
1. find -name 'postgrsql.conf'
  > vi postgresql.conf
  > > # - Connection Settings -
      listen_addresses = '*'
      # [주석해제]
      port = 5432                   
      max_connections = 100            
      
2. find -name 'g_hba.conf'
  > vi pg_hba.conf
  > > host    all             all             192.168.159.1/32        trust [추가]
  > > host    concept         concept         0.0.0.0/0               password [모든IP허용]
```
9. 현재 상황에 맞춰 따로 브랜치를 만들어서 적용 했다 mylinux 브랜치다. 앞으로의 개발은 mylinux로 대체 한다.


# 추후 추가로 진행해야 할 것들
1. 7장과 8장을 같이 융합
2. ~~로그인을 검증정보 DB를 따로 만들야 될것 같다.~~ 
(오라클로 설치함, 그러나 로그인 정보는 이미 mariadb로 구축이 완료 되어서 불필요함 이건 패스)
3. 현재 MSA 환경에 파이썬을 끼얺어 봐야 할것 같다.
4. ~~9장 분산 로그 환경 구성~~ (완료)
5. 10장 AWS 배포 까지.
6. 리눅스 서버에 docker를 구축하고 실제 MSA CICD 구성
7. ui msa 서비스를 구성해 본다. msa-sa06-bnkuisvc
8. ~~리눅스로 옮기고 나서 집킨에 서비스가 제대로 등록되지 않고 있다.~~ (확인:서비스가 제대로 안올라간 것이었다.)
9. logo

