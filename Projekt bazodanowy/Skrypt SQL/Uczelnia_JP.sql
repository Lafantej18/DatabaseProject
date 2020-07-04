/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2017                    */
/* Created on:     18.01.2019 16:13:28                          */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('R_3') and o.name = 'FK_R_3_R_4_KIERUNEK')
alter table R_3
   drop constraint FK_R_3_R_4_KIERUNEK
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('R_3') and o.name = 'FK_R_3_R_5_WYKLAD')
alter table R_3
   drop constraint FK_R_3_R_5_WYKLAD
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('R_4') and o.name = 'FK_R_4_R_8_KIERUNEK')
alter table R_4
   drop constraint FK_R_4_R_8_KIERUNEK
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('R_4') and o.name = 'FK_R_4_R_9_CWICZENI')
alter table R_4
   drop constraint FK_R_4_R_9_CWICZENI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('R_5') and o.name = 'FK_R_5_R_6_KIERUNEK')
alter table R_5
   drop constraint FK_R_5_R_6_KIERUNEK
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('R_5') and o.name = 'FK_R_5_R_7_LABOLATO')
alter table R_5
   drop constraint FK_R_5_R_7_LABOLATO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('cwiczenia') and o.name = 'FK_CWICZENI_R_10_PRACOWNI')
alter table cwiczenia
   drop constraint FK_CWICZENI_R_10_PRACOWNI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('kierunek_informatyka') and o.name = 'FK_KIERUNEK_R_1_STUDENCI')
alter table kierunek_informatyka
   drop constraint FK_KIERUNEK_R_1_STUDENCI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('kierunek_informatyka') and o.name = 'FK_KIERUNEK_R_2_PRZEWODN')
alter table kierunek_informatyka
   drop constraint FK_KIERUNEK_R_2_PRZEWODN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('labolatorium') and o.name = 'FK_LABOLATO_R_11_PRACOWNI')
alter table labolatorium
   drop constraint FK_LABOLATO_R_11_PRACOWNI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('pracownik') and o.name = 'FK_PRACOWNI_R_13_STAWKA')
alter table pracownik
   drop constraint FK_PRACOWNI_R_13_STAWKA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('pracownik') and o.name = 'FK_PRACOWNI_R_14_STOPIEN_')
alter table pracownik
   drop constraint FK_PRACOWNI_R_14_STOPIEN_
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('przewodniczacy') and o.name = 'FK_PRZEWODN_R_3_KIERUNEK')
alter table przewodniczacy
   drop constraint FK_PRZEWODN_R_3_KIERUNEK
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('wyklad') and o.name = 'FK_WYKLAD_R_12_PRACOWNI')
alter table wyklad
   drop constraint FK_WYKLAD_R_12_PRACOWNI
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('R_3')
            and   name  = 'R_5_FK'
            and   indid > 0
            and   indid < 255)
   drop index R_3.R_5_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('R_3')
            and   name  = 'R_4_FK'
            and   indid > 0
            and   indid < 255)
   drop index R_3.R_4_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('R_3')
            and   type = 'U')
   drop table R_3
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('R_4')
            and   name  = 'R_9_FK'
            and   indid > 0
            and   indid < 255)
   drop index R_4.R_9_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('R_4')
            and   name  = 'R_8_FK'
            and   indid > 0
            and   indid < 255)
   drop index R_4.R_8_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('R_4')
            and   type = 'U')
   drop table R_4
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('R_5')
            and   name  = 'R_7_FK'
            and   indid > 0
            and   indid < 255)
   drop index R_5.R_7_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('R_5')
            and   name  = 'R_6_FK'
            and   indid > 0
            and   indid < 255)
   drop index R_5.R_6_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('R_5')
            and   type = 'U')
   drop table R_5
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('cwiczenia')
            and   name  = 'R_10_FK'
            and   indid > 0
            and   indid < 255)
   drop index cwiczenia.R_10_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('cwiczenia')
            and   type = 'U')
   drop table cwiczenia
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('kierunek_informatyka')
            and   name  = 'R_2_FK'
            and   indid > 0
            and   indid < 255)
   drop index kierunek_informatyka.R_2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('kierunek_informatyka')
            and   name  = 'R_1_FK'
            and   indid > 0
            and   indid < 255)
   drop index kierunek_informatyka.R_1_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('kierunek_informatyka')
            and   type = 'U')
   drop table kierunek_informatyka
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('labolatorium')
            and   name  = 'R_11_FK'
            and   indid > 0
            and   indid < 255)
   drop index labolatorium.R_11_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('labolatorium')
            and   type = 'U')
   drop table labolatorium
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('pracownik')
            and   name  = 'R_14_FK'
            and   indid > 0
            and   indid < 255)
   drop index pracownik.R_14_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('pracownik')
            and   name  = 'R_13_FK'
            and   indid > 0
            and   indid < 255)
   drop index pracownik.R_13_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('pracownik')
            and   type = 'U')
   drop table pracownik
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('przewodniczacy')
            and   name  = 'R_3_FK'
            and   indid > 0
            and   indid < 255)
   drop index przewodniczacy.R_3_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('przewodniczacy')
            and   type = 'U')
   drop table przewodniczacy
go

if exists (select 1
            from  sysobjects
           where  id = object_id('stawka')
            and   type = 'U')
   drop table stawka
go

if exists (select 1
            from  sysobjects
           where  id = object_id('stopien_naukowy')
            and   type = 'U')
   drop table stopien_naukowy
go

if exists (select 1
            from  sysobjects
           where  id = object_id('studenci')
            and   type = 'U')
   drop table studenci
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('wyklad')
            and   name  = 'R_12_FK'
            and   indid > 0
            and   indid < 255)
   drop index wyklad.R_12_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('wyklad')
            and   type = 'U')
   drop table wyklad
go

/*==============================================================*/
/* Table: R_3                                                   */
/*==============================================================*/
create table R_3 (
   Id_kierunek_informatyka int                  not null,
   Id_wyklad            int                  not null,
   constraint PK_R_3 primary key (Id_kierunek_informatyka, Id_wyklad)
)
go

/*==============================================================*/
/* Index: R_4_FK                                                */
/*==============================================================*/




create nonclustered index R_4_FK on R_3 (Id_kierunek_informatyka ASC)
go

/*==============================================================*/
/* Index: R_5_FK                                                */
/*==============================================================*/




create nonclustered index R_5_FK on R_3 (Id_wyklad ASC)
go

/*==============================================================*/
/* Table: R_4                                                   */
/*==============================================================*/
create table R_4 (
   Id_kierunek_informatyka int                  not null,
   Id_cwiczenia         int                  not null,
   constraint PK_R_4 primary key (Id_kierunek_informatyka, Id_cwiczenia)
)
go

/*==============================================================*/
/* Index: R_8_FK                                                */
/*==============================================================*/




create nonclustered index R_8_FK on R_4 (Id_kierunek_informatyka ASC)
go

/*==============================================================*/
/* Index: R_9_FK                                                */
/*==============================================================*/




create nonclustered index R_9_FK on R_4 (Id_cwiczenia ASC)
go

/*==============================================================*/
/* Table: R_5                                                   */
/*==============================================================*/
create table R_5 (
   Id_kierunek_informatyka int                  not null,
   Id_labolatorium      int                  not null,
   constraint PK_R_5 primary key (Id_kierunek_informatyka, Id_labolatorium)
)
go

/*==============================================================*/
/* Index: R_6_FK                                                */
/*==============================================================*/




create nonclustered index R_6_FK on R_5 (Id_kierunek_informatyka ASC)
go

/*==============================================================*/
/* Index: R_7_FK                                                */
/*==============================================================*/




create nonclustered index R_7_FK on R_5 (Id_labolatorium ASC)
go

/*==============================================================*/
/* Table: cwiczenia                                             */
/*==============================================================*/
create table cwiczenia (
   Id_cwiczenia         int                  not null,
   Id_pracownik         int                  not null,
   Nazwa_cwiczenia      varchar(60)          not null,
   Liczba_godzin_cwiczenia varchar(10)          not null,
   constraint PK_CWICZENIA primary key (Id_cwiczenia)
)
go

/*==============================================================*/
/* Index: R_10_FK                                               */
/*==============================================================*/




create nonclustered index R_10_FK on cwiczenia (Id_pracownik ASC)
go

/*==============================================================*/
/* Table: kierunek_informatyka                                  */
/*==============================================================*/
create table kierunek_informatyka (
   Id_kierunek_informatyka int                  not null,
   Id_przewodniczacy    int                  not null,
   Id_studenci          int                  not null,
   Nazwa_kierunek       varchar(70)          not null,
   constraint PK_KIERUNEK_INFORMATYKA primary key (Id_kierunek_informatyka)
)
go

/*==============================================================*/
/* Index: R_1_FK                                                */
/*==============================================================*/




create nonclustered index R_1_FK on kierunek_informatyka (Id_studenci ASC)
go

/*==============================================================*/
/* Index: R_2_FK                                                */
/*==============================================================*/




create nonclustered index R_2_FK on kierunek_informatyka (Id_przewodniczacy ASC)
go

/*==============================================================*/
/* Table: labolatorium                                          */
/*==============================================================*/
create table labolatorium (
   Id_labolatorium      int                  not null,
   Id_pracownik         int                  not null,
   Nazwa_labolatorium   varchar(60)          not null,
   Liczba_godzin_labolatorium varchar(10)          not null,
   constraint PK_LABOLATORIUM primary key (Id_labolatorium)
)
go

/*==============================================================*/
/* Index: R_11_FK                                               */
/*==============================================================*/




create nonclustered index R_11_FK on labolatorium (Id_pracownik ASC)
go

/*==============================================================*/
/* Table: pracownik                                             */
/*==============================================================*/
create table pracownik (
   Id_pracownik         int                  not null,
   Id_stawka            int                  not null,
   Id_stopien_naukowy   int                  not null,
   Imie_pracownik       varchar(50)          not null,
   Nazwisko_pracownik   varchar(50)          not null,
   Adres_1_pracownik    varchar(30)          not null,
   Adres_2_pracownik    varchar(30)          not null,
   Data_urodzenia_pracownik datetime             not null,
   constraint PK_PRACOWNIK primary key (Id_pracownik)
)
go

/*==============================================================*/
/* Index: R_13_FK                                               */
/*==============================================================*/




create nonclustered index R_13_FK on pracownik (Id_stawka ASC)
go

/*==============================================================*/
/* Index: R_14_FK                                               */
/*==============================================================*/




create nonclustered index R_14_FK on pracownik (Id_stopien_naukowy ASC)
go

/*==============================================================*/
/* Table: przewodniczacy                                        */
/*==============================================================*/
create table przewodniczacy (
   Id_przewodniczacy    int                  not null,
   Id_kierunek_informatyka int                  null,
   Imie_przewodniczacy  varchar(50)          not null,
   Nazwisko_przewodniczacy varchar(50)          not null,
   Numer_albumu_przewodniczacy varchar(20)          not null,
   constraint PK_PRZEWODNICZACY primary key (Id_przewodniczacy)
)
go

/*==============================================================*/
/* Index: R_3_FK                                                */
/*==============================================================*/




create nonclustered index R_3_FK on przewodniczacy (Id_kierunek_informatyka ASC)
go

/*==============================================================*/
/* Table: stawka                                                */
/*==============================================================*/
create table stawka (
   Id_stawka            int                  not null,
   wartosc              money                not null,
   constraint PK_STAWKA primary key (Id_stawka)
)
go

/*==============================================================*/
/* Table: stopien_naukowy                                       */
/*==============================================================*/
create table stopien_naukowy (
   Id_stopien_naukowy   int                  not null,
   Nazwa_stopien        varchar(30)          not null,
   constraint PK_STOPIEN_NAUKOWY primary key (Id_stopien_naukowy)
)
go

/*==============================================================*/
/* Table: studenci                                              */
/*==============================================================*/
create table studenci (
   Id_studenci          int                  not null,
   Imie_student         varchar(50)          not null,
   Nazwisko_student     varchar(50)          not null,
   Adres_1_student      varchar(50)          not null,
   Adres_2_student      varchar(50)          not null,
   Numer_albumu_student varchar(20)          not null,
   Data_urodzenia_student datetime             not null,
   constraint PK_STUDENCI primary key (Id_studenci)
)
go

/*==============================================================*/
/* Table: wyklad                                                */
/*==============================================================*/
create table wyklad (
   Id_wyklad            int                  not null,
   Id_pracownik         int                  not null,
   Nazwa_wyklad         varchar(60)          not null,
   Liczba_godzin_wyklad varchar(10)          not null,
   constraint PK_WYKLAD primary key (Id_wyklad)
)
go

/*==============================================================*/
/* Index: R_12_FK                                               */
/*==============================================================*/




create nonclustered index R_12_FK on wyklad (Id_pracownik ASC)
go

alter table R_3
   add constraint FK_R_3_R_4_KIERUNEK foreign key (Id_kierunek_informatyka)
      references kierunek_informatyka (Id_kierunek_informatyka)
go

alter table R_3
   add constraint FK_R_3_R_5_WYKLAD foreign key (Id_wyklad)
      references wyklad (Id_wyklad)
go

alter table R_4
   add constraint FK_R_4_R_8_KIERUNEK foreign key (Id_kierunek_informatyka)
      references kierunek_informatyka (Id_kierunek_informatyka)
go

alter table R_4
   add constraint FK_R_4_R_9_CWICZENI foreign key (Id_cwiczenia)
      references cwiczenia (Id_cwiczenia)
go

alter table R_5
   add constraint FK_R_5_R_6_KIERUNEK foreign key (Id_kierunek_informatyka)
      references kierunek_informatyka (Id_kierunek_informatyka)
go

alter table R_5
   add constraint FK_R_5_R_7_LABOLATO foreign key (Id_labolatorium)
      references labolatorium (Id_labolatorium)
go

alter table cwiczenia
   add constraint FK_CWICZENI_R_10_PRACOWNI foreign key (Id_pracownik)
      references pracownik (Id_pracownik)
go

alter table kierunek_informatyka
   add constraint FK_KIERUNEK_R_1_STUDENCI foreign key (Id_studenci)
      references studenci (Id_studenci)
go

alter table kierunek_informatyka
   add constraint FK_KIERUNEK_R_2_PRZEWODN foreign key (Id_przewodniczacy)
      references przewodniczacy (Id_przewodniczacy)
go

alter table labolatorium
   add constraint FK_LABOLATO_R_11_PRACOWNI foreign key (Id_pracownik)
      references pracownik (Id_pracownik)
go

alter table pracownik
   add constraint FK_PRACOWNI_R_13_STAWKA foreign key (Id_stawka)
      references stawka (Id_stawka)
go

alter table pracownik
   add constraint FK_PRACOWNI_R_14_STOPIEN_ foreign key (Id_stopien_naukowy)
      references stopien_naukowy (Id_stopien_naukowy)
go

alter table przewodniczacy
   add constraint FK_PRZEWODN_R_3_KIERUNEK foreign key (Id_kierunek_informatyka)
      references kierunek_informatyka (Id_kierunek_informatyka)
go

alter table wyklad
   add constraint FK_WYKLAD_R_12_PRACOWNI foreign key (Id_pracownik)
      references pracownik (Id_pracownik)
go

