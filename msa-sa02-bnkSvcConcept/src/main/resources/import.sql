--
-- PostgreSQL database dump
--

-- Dumped from database version 11.4
-- Dumped by pg_dump version 11.4

-- Started on 2019-08-12 01:47:27

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 2857 (class 0 OID 16586)
-- Dependencies: 199
-- Data for Name: tbl_annual_sal; Type: TABLE DATA; Schema: public; Owner: concept
--

INSERT INTO public.tbl_annual_sal VALUES (101, 15600000, 1300000);
INSERT INTO public.tbl_annual_sal VALUES (102, 15840000, 1320000);
INSERT INTO public.tbl_annual_sal VALUES (104, 17520000, 1460000);
INSERT INTO public.tbl_annual_sal VALUES (109, 16200000, 1350000);
INSERT INTO public.tbl_annual_sal VALUES (111, 18360000, 1530000);


--
-- TOC entry 2856 (class 0 OID 16583)
-- Dependencies: 198
-- Data for Name: tbl_appoint_record; Type: TABLE DATA; Schema: public; Owner: concept
--

INSERT INTO public.tbl_appoint_record VALUES (101, 1, '2008-03-01', '사원', '30');
INSERT INTO public.tbl_appoint_record VALUES (101, 2, '2010-03-01', '대리', '30');
INSERT INTO public.tbl_appoint_record VALUES (102, 1, '2008-05-01', '대리', '30');
INSERT INTO public.tbl_appoint_record VALUES (103, 1, '2008-12-01', '사원', '20');
INSERT INTO public.tbl_appoint_record VALUES (103, 2, '2010-12-01', '대리', '20');
INSERT INTO public.tbl_appoint_record VALUES (104, 1, '2003-05-01', '사원', '10');
INSERT INTO public.tbl_appoint_record VALUES (104, 2, '2005-05-01', '대리', '10');
INSERT INTO public.tbl_appoint_record VALUES (104, 3, '2008-05-01', '과장', '10');
INSERT INTO public.tbl_appoint_record VALUES (105, 1, '2004-08-01', '사원', '10');
INSERT INTO public.tbl_appoint_record VALUES (105, 2, '2007-08-01', '대리', '10');
INSERT INTO public.tbl_appoint_record VALUES (105, 3, '2010-08-01', '과장', '10');
INSERT INTO public.tbl_appoint_record VALUES (106, 1, '2005-09-01', '과장', '10');
INSERT INTO public.tbl_appoint_record VALUES (107, 1, '2001-10-01', '차장', '30');
INSERT INTO public.tbl_appoint_record VALUES (108, 1, '2001-10-01', '차장', '20');
INSERT INTO public.tbl_appoint_record VALUES (109, 1, '2007-03-01', '대리', '30');
INSERT INTO public.tbl_appoint_record VALUES (110, 1, '2000-03-01', '차장', '10');
INSERT INTO public.tbl_appoint_record VALUES (111, 1, '2003-03-01', '차장', '30');
INSERT INTO public.tbl_appoint_record VALUES (112, 1, '2004-03-01', '과장', '20');


--
-- TOC entry 2859 (class 0 OID 16592)
-- Dependencies: 201
-- Data for Name: tbl_contract_sal; Type: TABLE DATA; Schema: public; Owner: concept
--

INSERT INTO public.tbl_contract_sal VALUES (103, 1300000);
INSERT INTO public.tbl_contract_sal VALUES (107, 1550000);
INSERT INTO public.tbl_contract_sal VALUES (112, 1400000);


--
-- TOC entry 2854 (class 0 OID 16577)
-- Dependencies: 196
-- Data for Name: tbl_dept; Type: TABLE DATA; Schema: public; Owner: concept
--

INSERT INTO public.tbl_dept VALUES ('10', '인사팀', '서울');
INSERT INTO public.tbl_dept VALUES ('20', '영업팀', '대전');
INSERT INTO public.tbl_dept VALUES ('30', '전산팀', '수원');


--
-- TOC entry 2855 (class 0 OID 16580)
-- Dependencies: 197
-- Data for Name: tbl_emp; Type: TABLE DATA; Schema: public; Owner: concept
--

INSERT INTO public.tbl_emp VALUES (101, '조동진', '30', '대리', '2008-03-01', NULL, '연봉', 1400000, '2008-03-01');
INSERT INTO public.tbl_emp VALUES (102, '한영애', '30', '대리', '2008-05-01', '2010-12-01', '연봉', 1540000, '2008-05-01');
INSERT INTO public.tbl_emp VALUES (103, '조규찬', '20', '대리', '2008-12-01', NULL, '금액', 1600000, '2008-12-01');
INSERT INTO public.tbl_emp VALUES (104, '이상은', '10', '과장', '2003-05-01', NULL, '연봉', 1680000, '2003-05-01');
INSERT INTO public.tbl_emp VALUES (105, '조덕배', '10', '과장', '2004-08-01', NULL, '호봉', 1540000, '2004-08-01');
INSERT INTO public.tbl_emp VALUES (106, '장필순', '10', '과장', '2005-09-01', NULL, '호봉', 1700000, '2005-09-01');
INSERT INTO public.tbl_emp VALUES (107, '오석준', '30', '차장', '2001-10-01', NULL, '금액', 1770000, '2001-10-01');
INSERT INTO public.tbl_emp VALUES (108, '이규석', '20', '차장', '2001-10-01', NULL, '호봉', 1600000, '2001-10-01');
INSERT INTO public.tbl_emp VALUES (109, '전수경', '30', '대리', '2007-03-01', NULL, '연봉', 1470000, '2007-03-01');
INSERT INTO public.tbl_emp VALUES (110, '이선희', '10', '차장', '2000-03-01', '2007-12-01', '호봉', 1790000, '2000-03-01');
INSERT INTO public.tbl_emp VALUES (111, '김창완', '30', '차장', '2003-03-01', NULL, '연봉', 1530000, '2003-03-01');
INSERT INTO public.tbl_emp VALUES (112, '이현우', '20', '과장', '2004-03-01', NULL, '금액', 1500000, '2004-03-01');


--
-- TOC entry 2860 (class 0 OID 16595)
-- Dependencies: 202
-- Data for Name: tbl_etc_sal; Type: TABLE DATA; Schema: public; Owner: concept
--

INSERT INTO public.tbl_etc_sal VALUES (101, 'Y', 100000, NULL, NULL, NULL, NULL);
INSERT INTO public.tbl_etc_sal VALUES (102, 'Y', 100000, 'Y', 120000, NULL, NULL);
INSERT INTO public.tbl_etc_sal VALUES (103, 'Y', 100000, NULL, NULL, 'Y', 200000);
INSERT INTO public.tbl_etc_sal VALUES (104, 'Y', 100000, 'Y', 120000, NULL, NULL);
INSERT INTO public.tbl_etc_sal VALUES (105, 'Y', 100000, NULL, NULL, NULL, NULL);
INSERT INTO public.tbl_etc_sal VALUES (106, 'Y', 100000, NULL, NULL, 'Y', 200000);
INSERT INTO public.tbl_etc_sal VALUES (107, 'Y', 100000, 'Y', 120000, NULL, NULL);
INSERT INTO public.tbl_etc_sal VALUES (108, 'Y', 100000, NULL, NULL, NULL, NULL);
INSERT INTO public.tbl_etc_sal VALUES (109, NULL, NULL, 'Y', 120000, NULL, NULL);
INSERT INTO public.tbl_etc_sal VALUES (110, NULL, NULL, NULL, NULL, 'Y', 200000);
INSERT INTO public.tbl_etc_sal VALUES (112, 'Y', 100000, NULL, NULL, NULL, NULL);


--
-- TOC entry 2861 (class 0 OID 16598)
-- Dependencies: 203
-- Data for Name: tbl_pay_record; Type: TABLE DATA; Schema: public; Owner: concept
--

INSERT INTO public.tbl_pay_record VALUES ('201001', 101, 1400000, 1300000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201001', 102, 1540000, 1320000, 220000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201001', 103, 1600000, 1300000, 100000, 200000);
INSERT INTO public.tbl_pay_record VALUES ('201001', 104, 1680000, 1460000, 220000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201001', 105, 1540000, 1440000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201001', 106, 1700000, 1400000, 100000, 200000);
INSERT INTO public.tbl_pay_record VALUES ('201001', 107, 1770000, 1550000, 220000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201001', 108, 1600000, 1500000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201001', 109, 1470000, 1350000, 120000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201001', 111, 1530000, 1530000, NULL, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201001', 112, 1500000, 1400000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201002', 101, 1400000, 1300000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201002', 102, 1540000, 1320000, 220000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201002', 103, 1600000, 1300000, 100000, 200000);
INSERT INTO public.tbl_pay_record VALUES ('201002', 104, 1680000, 1460000, 220000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201002', 105, 1540000, 1440000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201002', 106, 1700000, 1400000, 100000, 200000);
INSERT INTO public.tbl_pay_record VALUES ('201002', 107, 1770000, 1550000, 220000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201002', 108, 1600000, 1500000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201002', 109, 1470000, 1350000, 120000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201002', 111, 1530000, 1530000, NULL, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201002', 112, 1500000, 1400000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201003', 101, 1400000, 1300000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201003', 102, 1540000, 1320000, 220000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201003', 103, 1600000, 1300000, 100000, 200000);
INSERT INTO public.tbl_pay_record VALUES ('201003', 104, 1680000, 1460000, 220000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201003', 105, 1540000, 1440000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201003', 106, 1700000, 1400000, 100000, 200000);
INSERT INTO public.tbl_pay_record VALUES ('201003', 107, 1770000, 1550000, 220000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201003', 108, 1600000, 1500000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201003', 109, 1470000, 1350000, 120000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201003', 111, 1530000, 1530000, NULL, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201003', 112, 1500000, 1400000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201004', 101, 1400000, 1300000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201004', 102, 1540000, 1320000, 220000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201004', 103, 1600000, 1300000, 100000, 200000);
INSERT INTO public.tbl_pay_record VALUES ('201004', 104, 1680000, 1460000, 220000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201004', 105, 1540000, 1440000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201004', 106, 1700000, 1400000, 100000, 200000);
INSERT INTO public.tbl_pay_record VALUES ('201004', 107, 1770000, 1550000, 220000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201004', 108, 1600000, 1500000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201004', 109, 1470000, 1350000, 120000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201004', 111, 1530000, 1530000, NULL, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201004', 112, 1500000, 1400000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201005', 101, 1400000, 1300000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201005', 102, 1540000, 1320000, 220000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201005', 103, 1600000, 1300000, 100000, 200000);
INSERT INTO public.tbl_pay_record VALUES ('201005', 104, 1680000, 1460000, 220000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201005', 105, 1540000, 1440000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201005', 106, 1700000, 1400000, 100000, 200000);
INSERT INTO public.tbl_pay_record VALUES ('201005', 107, 1770000, 1550000, 220000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201005', 108, 1600000, 1500000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201005', 109, 1470000, 1350000, 120000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201005', 111, 1530000, 1530000, NULL, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201005', 112, 1500000, 1400000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201006', 101, 1400000, 1300000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201006', 102, 1540000, 1320000, 220000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201006', 103, 1600000, 1300000, 100000, 200000);
INSERT INTO public.tbl_pay_record VALUES ('201006', 104, 1680000, 1460000, 220000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201006', 105, 1540000, 1440000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201006', 106, 1700000, 1400000, 100000, 200000);
INSERT INTO public.tbl_pay_record VALUES ('201006', 107, 1770000, 1550000, 220000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201006', 108, 1600000, 1500000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201006', 109, 1470000, 1350000, 120000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201006', 111, 1530000, 1530000, NULL, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201006', 112, 1500000, 1400000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201007', 101, 1400000, 1300000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201007', 102, 1540000, 1320000, 220000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201007', 103, 1600000, 1300000, 100000, 200000);
INSERT INTO public.tbl_pay_record VALUES ('201007', 104, 1680000, 1460000, 220000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201007', 105, 1540000, 1440000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201007', 106, 1700000, 1400000, 100000, 200000);
INSERT INTO public.tbl_pay_record VALUES ('201007', 107, 1770000, 1550000, 220000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201007', 108, 1600000, 1500000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201007', 109, 1470000, 1350000, 120000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201007', 111, 1530000, 1530000, NULL, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201007', 112, 1500000, 1400000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201008', 101, 1400000, 1300000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201008', 102, 1540000, 1320000, 220000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201008', 103, 1600000, 1300000, 100000, 200000);
INSERT INTO public.tbl_pay_record VALUES ('201008', 104, 1680000, 1460000, 220000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201008', 105, 1540000, 1440000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201008', 106, 1700000, 1400000, 100000, 200000);
INSERT INTO public.tbl_pay_record VALUES ('201008', 107, 1770000, 1550000, 220000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201008', 108, 1600000, 1500000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201008', 109, 1470000, 1350000, 120000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201008', 111, 1530000, 1530000, NULL, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201008', 112, 1500000, 1400000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201009', 101, 1400000, 1300000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201009', 102, 1540000, 1320000, 220000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201009', 103, 1600000, 1300000, 100000, 200000);
INSERT INTO public.tbl_pay_record VALUES ('201009', 104, 1680000, 1460000, 220000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201009', 105, 1540000, 1440000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201009', 106, 1700000, 1400000, 100000, 200000);
INSERT INTO public.tbl_pay_record VALUES ('201009', 107, 1770000, 1550000, 220000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201009', 108, 1600000, 1500000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201009', 109, 1470000, 1350000, 120000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201009', 111, 1530000, 1530000, NULL, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201009', 112, 1500000, 1400000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201010', 101, 1400000, 1300000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201010', 102, 1540000, 1320000, 220000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201010', 103, 1600000, 1300000, 100000, 200000);
INSERT INTO public.tbl_pay_record VALUES ('201010', 104, 1680000, 1460000, 220000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201010', 105, 1540000, 1440000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201010', 106, 1700000, 1400000, 100000, 200000);
INSERT INTO public.tbl_pay_record VALUES ('201010', 107, 1770000, 1550000, 220000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201010', 108, 1600000, 1500000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201010', 109, 1470000, 1350000, 120000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201010', 111, 1530000, 1530000, NULL, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201010', 112, 1500000, 1400000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201011', 101, 1400000, 1300000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201011', 102, 1540000, 1320000, 220000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201011', 103, 1600000, 1300000, 100000, 200000);
INSERT INTO public.tbl_pay_record VALUES ('201011', 104, 1680000, 1460000, 220000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201011', 105, 1540000, 1440000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201011', 106, 1700000, 1400000, 100000, 200000);
INSERT INTO public.tbl_pay_record VALUES ('201011', 107, 1770000, 1550000, 220000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201011', 108, 1600000, 1500000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201011', 109, 1470000, 1350000, 120000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201011', 111, 1530000, 1530000, NULL, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201011', 112, 1500000, 1400000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201012', 101, 1400000, 1300000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201012', 103, 1600000, 1300000, 100000, 200000);
INSERT INTO public.tbl_pay_record VALUES ('201012', 104, 1680000, 1460000, 220000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201012', 105, 1540000, 1440000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201012', 106, 1700000, 1400000, 100000, 200000);
INSERT INTO public.tbl_pay_record VALUES ('201012', 107, 1770000, 1550000, 220000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201012', 108, 1600000, 1500000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201012', 109, 1470000, 1350000, 120000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201012', 111, 1530000, 1530000, NULL, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201012', 112, 1500000, 1400000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201101', 101, 1400000, 1300000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201101', 103, 1600000, 1300000, 100000, 200000);
INSERT INTO public.tbl_pay_record VALUES ('201101', 104, 1680000, 1460000, 220000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201101', 105, 1540000, 1440000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201101', 106, 1700000, 1400000, 100000, 200000);
INSERT INTO public.tbl_pay_record VALUES ('201101', 107, 1770000, 1550000, 220000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201101', 108, 1600000, 1500000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201101', 109, 1470000, 1350000, 120000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201101', 111, 1530000, 1530000, NULL, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201101', 112, 1500000, 1400000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201102', 101, 1400000, 1300000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201102', 103, 1600000, 1300000, 100000, 200000);
INSERT INTO public.tbl_pay_record VALUES ('201102', 104, 1680000, 1460000, 220000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201102', 105, 1540000, 1440000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201102', 106, 1700000, 1400000, 100000, 200000);
INSERT INTO public.tbl_pay_record VALUES ('201102', 107, 1770000, 1550000, 220000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201102', 108, 1600000, 1500000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201102', 109, 1470000, 1350000, 120000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201102', 111, 1530000, 1530000, NULL, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201102', 112, 1500000, 1400000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201103', 101, 1400000, 1300000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201103', 103, 1600000, 1300000, 100000, 200000);
INSERT INTO public.tbl_pay_record VALUES ('201103', 104, 1680000, 1460000, 220000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201103', 105, 1540000, 1440000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201103', 106, 1700000, 1400000, 100000, 200000);
INSERT INTO public.tbl_pay_record VALUES ('201103', 107, 1770000, 1550000, 220000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201103', 108, 1600000, 1500000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201103', 109, 1470000, 1350000, 120000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201103', 111, 1530000, 1530000, NULL, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201103', 112, 1500000, 1400000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201104', 101, 1400000, 1300000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201104', 103, 1600000, 1300000, 100000, 200000);
INSERT INTO public.tbl_pay_record VALUES ('201104', 104, 1680000, 1460000, 220000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201104', 105, 1540000, 1440000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201104', 106, 1700000, 1400000, 100000, 200000);
INSERT INTO public.tbl_pay_record VALUES ('201104', 107, 1770000, 1550000, 220000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201104', 108, 1600000, 1500000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201104', 109, 1470000, 1350000, 120000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201104', 111, 1530000, 1530000, NULL, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201104', 112, 1500000, 1400000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201105', 101, 1400000, 1300000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201105', 103, 1600000, 1300000, 100000, 200000);
INSERT INTO public.tbl_pay_record VALUES ('201105', 104, 1680000, 1460000, 220000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201105', 105, 1540000, 1440000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201105', 106, 1700000, 1400000, 100000, 200000);
INSERT INTO public.tbl_pay_record VALUES ('201105', 107, 1770000, 1550000, 220000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201105', 108, 1600000, 1500000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201105', 109, 1470000, 1350000, 120000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201105', 111, 1530000, 1530000, NULL, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201105', 112, 1500000, 1400000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201106', 101, 1400000, 1300000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201106', 103, 1600000, 1300000, 100000, 200000);
INSERT INTO public.tbl_pay_record VALUES ('201106', 104, 1680000, 1460000, 220000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201106', 105, 1540000, 1440000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201106', 106, 1700000, 1400000, 100000, 200000);
INSERT INTO public.tbl_pay_record VALUES ('201106', 107, 1770000, 1550000, 220000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201106', 108, 1600000, 1500000, 100000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201106', 109, 1470000, 1350000, 120000, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201106', 111, 1530000, 1530000, NULL, NULL);
INSERT INTO public.tbl_pay_record VALUES ('201106', 112, 1500000, 1400000, 100000, NULL);


--
-- TOC entry 2862 (class 0 OID 16601)
-- Dependencies: 204
-- Data for Name: tbl_payroll; Type: TABLE DATA; Schema: public; Owner: concept
--



--
-- TOC entry 2858 (class 0 OID 16589)
-- Dependencies: 200
-- Data for Name: tbl_step_sal; Type: TABLE DATA; Schema: public; Owner: concept
--

INSERT INTO public.tbl_step_sal VALUES (105, 9, 1440000);
INSERT INTO public.tbl_step_sal VALUES (106, 8, 1400000);
INSERT INTO public.tbl_step_sal VALUES (108, 11, 1500000);
INSERT INTO public.tbl_step_sal VALUES (110, 13, 1590000);


-- Completed on 2019-08-12 01:47:27

--
-- PostgreSQL database dump complete
--

