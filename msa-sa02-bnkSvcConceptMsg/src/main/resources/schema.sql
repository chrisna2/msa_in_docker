--
-- PostgreSQL database dump
--

-- Dumped from database version 11.4
-- Dumped by pg_dump version 11.4

-- Started on 2019-08-12 01:39:47

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

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 199 (class 1259 OID 16586)
-- Name: tbl_annual_sal; Type: TABLE; Schema: public; Owner: concept
--

CREATE TABLE public.tbl_annual_sal (
    emp_no numeric(3,0) NOT NULL,
    annual_sal numeric(10,0) NOT NULL,
    bsic_month_pay numeric(10,0) NOT NULL
);


ALTER TABLE public.tbl_annual_sal OWNER TO concept;

--
-- TOC entry 2868 (class 0 OID 0)
-- Dependencies: 199
-- Name: TABLE tbl_annual_sal; Type: COMMENT; Schema: public; Owner: concept
--

COMMENT ON TABLE public.tbl_annual_sal IS '연봉제급여';


--
-- TOC entry 2869 (class 0 OID 0)
-- Dependencies: 199
-- Name: COLUMN tbl_annual_sal.emp_no; Type: COMMENT; Schema: public; Owner: concept
--

COMMENT ON COLUMN public.tbl_annual_sal.emp_no IS '사원번호';


--
-- TOC entry 2870 (class 0 OID 0)
-- Dependencies: 199
-- Name: COLUMN tbl_annual_sal.annual_sal; Type: COMMENT; Schema: public; Owner: concept
--

COMMENT ON COLUMN public.tbl_annual_sal.annual_sal IS '연봉액';


--
-- TOC entry 2871 (class 0 OID 0)
-- Dependencies: 199
-- Name: COLUMN tbl_annual_sal.bsic_month_pay; Type: COMMENT; Schema: public; Owner: concept
--

COMMENT ON COLUMN public.tbl_annual_sal.bsic_month_pay IS '월기본급';


--
-- TOC entry 198 (class 1259 OID 16583)
-- Name: tbl_appoint_record; Type: TABLE; Schema: public; Owner: concept
--

CREATE TABLE public.tbl_appoint_record (
    emp_no numeric(3,0) NOT NULL,
    career_idx numeric(2,0) NOT NULL,
    appoint_date date NOT NULL,
    rol_position character varying(6) NOT NULL,
    dept_code character varying(2) NOT NULL
);


ALTER TABLE public.tbl_appoint_record OWNER TO concept;

--
-- TOC entry 2872 (class 0 OID 0)
-- Dependencies: 198
-- Name: TABLE tbl_appoint_record; Type: COMMENT; Schema: public; Owner: concept
--

COMMENT ON TABLE public.tbl_appoint_record IS '발령이력';


--
-- TOC entry 2873 (class 0 OID 0)
-- Dependencies: 198
-- Name: COLUMN tbl_appoint_record.emp_no; Type: COMMENT; Schema: public; Owner: concept
--

COMMENT ON COLUMN public.tbl_appoint_record.emp_no IS '사원번호';


--
-- TOC entry 2874 (class 0 OID 0)
-- Dependencies: 198
-- Name: COLUMN tbl_appoint_record.career_idx; Type: COMMENT; Schema: public; Owner: concept
--

COMMENT ON COLUMN public.tbl_appoint_record.career_idx IS '이력순번';


--
-- TOC entry 2875 (class 0 OID 0)
-- Dependencies: 198
-- Name: COLUMN tbl_appoint_record.appoint_date; Type: COMMENT; Schema: public; Owner: concept
--

COMMENT ON COLUMN public.tbl_appoint_record.appoint_date IS '발령일자';


--
-- TOC entry 2876 (class 0 OID 0)
-- Dependencies: 198
-- Name: COLUMN tbl_appoint_record.rol_position; Type: COMMENT; Schema: public; Owner: concept
--

COMMENT ON COLUMN public.tbl_appoint_record.rol_position IS '직급';


--
-- TOC entry 2877 (class 0 OID 0)
-- Dependencies: 198
-- Name: COLUMN tbl_appoint_record.dept_code; Type: COMMENT; Schema: public; Owner: concept
--

COMMENT ON COLUMN public.tbl_appoint_record.dept_code IS '부서코드';


--
-- TOC entry 201 (class 1259 OID 16592)
-- Name: tbl_contract_sal; Type: TABLE; Schema: public; Owner: concept
--

CREATE TABLE public.tbl_contract_sal (
    emp_no numeric(3,0) NOT NULL,
    bsic_month_pay numeric(10,0) NOT NULL
);


ALTER TABLE public.tbl_contract_sal OWNER TO concept;

--
-- TOC entry 2878 (class 0 OID 0)
-- Dependencies: 201
-- Name: TABLE tbl_contract_sal; Type: COMMENT; Schema: public; Owner: concept
--

COMMENT ON TABLE public.tbl_contract_sal IS '금액제급여';


--
-- TOC entry 2879 (class 0 OID 0)
-- Dependencies: 201
-- Name: COLUMN tbl_contract_sal.emp_no; Type: COMMENT; Schema: public; Owner: concept
--

COMMENT ON COLUMN public.tbl_contract_sal.emp_no IS '사원번호';


--
-- TOC entry 2880 (class 0 OID 0)
-- Dependencies: 201
-- Name: COLUMN tbl_contract_sal.bsic_month_pay; Type: COMMENT; Schema: public; Owner: concept
--

COMMENT ON COLUMN public.tbl_contract_sal.bsic_month_pay IS '월기본급';


--
-- TOC entry 196 (class 1259 OID 16577)
-- Name: tbl_dept; Type: TABLE; Schema: public; Owner: concept
--

CREATE TABLE public.tbl_dept (
    dept_code character varying(2) NOT NULL,
    dept_nm character varying(10) NOT NULL,
    region character varying(10)
);


ALTER TABLE public.tbl_dept OWNER TO concept;

--
-- TOC entry 2881 (class 0 OID 0)
-- Dependencies: 196
-- Name: TABLE tbl_dept; Type: COMMENT; Schema: public; Owner: concept
--

COMMENT ON TABLE public.tbl_dept IS '부서';


--
-- TOC entry 2882 (class 0 OID 0)
-- Dependencies: 196
-- Name: COLUMN tbl_dept.dept_code; Type: COMMENT; Schema: public; Owner: concept
--

COMMENT ON COLUMN public.tbl_dept.dept_code IS '부서코드';


--
-- TOC entry 2883 (class 0 OID 0)
-- Dependencies: 196
-- Name: COLUMN tbl_dept.dept_nm; Type: COMMENT; Schema: public; Owner: concept
--

COMMENT ON COLUMN public.tbl_dept.dept_nm IS '부서명';


--
-- TOC entry 2884 (class 0 OID 0)
-- Dependencies: 196
-- Name: COLUMN tbl_dept.region; Type: COMMENT; Schema: public; Owner: concept
--

COMMENT ON COLUMN public.tbl_dept.region IS '지역';


--
-- TOC entry 197 (class 1259 OID 16580)
-- Name: tbl_emp; Type: TABLE; Schema: public; Owner: concept
--

CREATE TABLE public.tbl_emp (
    emp_no numeric(3,0) NOT NULL,
    emp_nm character varying(10) NOT NULL,
    dept_code character varying(2) NOT NULL,
    rol_position character varying(6) NOT NULL,
    join_date date NOT NULL,
    retire_date date,
    sal_type character varying(10) NOT NULL,
    month_sal numeric(10,0) NOT NULL,
    reg_date date NOT NULL
);


ALTER TABLE public.tbl_emp OWNER TO concept;

--
-- TOC entry 2885 (class 0 OID 0)
-- Dependencies: 197
-- Name: TABLE tbl_emp; Type: COMMENT; Schema: public; Owner: concept
--

COMMENT ON TABLE public.tbl_emp IS '사원';


--
-- TOC entry 2886 (class 0 OID 0)
-- Dependencies: 197
-- Name: COLUMN tbl_emp.emp_no; Type: COMMENT; Schema: public; Owner: concept
--

COMMENT ON COLUMN public.tbl_emp.emp_no IS '사원번호';


--
-- TOC entry 2887 (class 0 OID 0)
-- Dependencies: 197
-- Name: COLUMN tbl_emp.emp_nm; Type: COMMENT; Schema: public; Owner: concept
--

COMMENT ON COLUMN public.tbl_emp.emp_nm IS '사원명';


--
-- TOC entry 2888 (class 0 OID 0)
-- Dependencies: 197
-- Name: COLUMN tbl_emp.dept_code; Type: COMMENT; Schema: public; Owner: concept
--

COMMENT ON COLUMN public.tbl_emp.dept_code IS '부서코드';


--
-- TOC entry 2889 (class 0 OID 0)
-- Dependencies: 197
-- Name: COLUMN tbl_emp.rol_position; Type: COMMENT; Schema: public; Owner: concept
--

COMMENT ON COLUMN public.tbl_emp.rol_position IS '직급';


--
-- TOC entry 2890 (class 0 OID 0)
-- Dependencies: 197
-- Name: COLUMN tbl_emp.join_date; Type: COMMENT; Schema: public; Owner: concept
--

COMMENT ON COLUMN public.tbl_emp.join_date IS '입사일자';


--
-- TOC entry 2891 (class 0 OID 0)
-- Dependencies: 197
-- Name: COLUMN tbl_emp.retire_date; Type: COMMENT; Schema: public; Owner: concept
--

COMMENT ON COLUMN public.tbl_emp.retire_date IS '퇴사일자';


--
-- TOC entry 2892 (class 0 OID 0)
-- Dependencies: 197
-- Name: COLUMN tbl_emp.sal_type; Type: COMMENT; Schema: public; Owner: concept
--

COMMENT ON COLUMN public.tbl_emp.sal_type IS '급여구분';


--
-- TOC entry 2893 (class 0 OID 0)
-- Dependencies: 197
-- Name: COLUMN tbl_emp.month_sal; Type: COMMENT; Schema: public; Owner: concept
--

COMMENT ON COLUMN public.tbl_emp.month_sal IS '월급여';


--
-- TOC entry 2894 (class 0 OID 0)
-- Dependencies: 197
-- Name: COLUMN tbl_emp.reg_date; Type: COMMENT; Schema: public; Owner: concept
--

COMMENT ON COLUMN public.tbl_emp.reg_date IS '등록일시';


--
-- TOC entry 202 (class 1259 OID 16595)
-- Name: tbl_etc_sal; Type: TABLE; Schema: public; Owner: concept
--

CREATE TABLE public.tbl_etc_sal (
    emp_no numeric(3,0) NOT NULL,
    bsic_etc_pay_yn character varying(1),
    bsic_etc_pay numeric(10,0),
    spcl_etc_pay_yn character varying(1),
    spcl_etc_pay numeric(10,0),
    bonus_pay_yn character varying(1),
    bonus_pay numeric(10,0)
);


ALTER TABLE public.tbl_etc_sal OWNER TO concept;

--
-- TOC entry 2895 (class 0 OID 0)
-- Dependencies: 202
-- Name: TABLE tbl_etc_sal; Type: COMMENT; Schema: public; Owner: concept
--

COMMENT ON TABLE public.tbl_etc_sal IS '기타급여';


--
-- TOC entry 2896 (class 0 OID 0)
-- Dependencies: 202
-- Name: COLUMN tbl_etc_sal.emp_no; Type: COMMENT; Schema: public; Owner: concept
--

COMMENT ON COLUMN public.tbl_etc_sal.emp_no IS '사원번호';


--
-- TOC entry 2897 (class 0 OID 0)
-- Dependencies: 202
-- Name: COLUMN tbl_etc_sal.bsic_etc_pay_yn; Type: COMMENT; Schema: public; Owner: concept
--

COMMENT ON COLUMN public.tbl_etc_sal.bsic_etc_pay_yn IS '기본수당지급여부';


--
-- TOC entry 2898 (class 0 OID 0)
-- Dependencies: 202
-- Name: COLUMN tbl_etc_sal.bsic_etc_pay; Type: COMMENT; Schema: public; Owner: concept
--

COMMENT ON COLUMN public.tbl_etc_sal.bsic_etc_pay IS '기본수당액';


--
-- TOC entry 2899 (class 0 OID 0)
-- Dependencies: 202
-- Name: COLUMN tbl_etc_sal.spcl_etc_pay_yn; Type: COMMENT; Schema: public; Owner: concept
--

COMMENT ON COLUMN public.tbl_etc_sal.spcl_etc_pay_yn IS '특별수당지급여부';


--
-- TOC entry 2900 (class 0 OID 0)
-- Dependencies: 202
-- Name: COLUMN tbl_etc_sal.spcl_etc_pay; Type: COMMENT; Schema: public; Owner: concept
--

COMMENT ON COLUMN public.tbl_etc_sal.spcl_etc_pay IS '특별수당액';


--
-- TOC entry 2901 (class 0 OID 0)
-- Dependencies: 202
-- Name: COLUMN tbl_etc_sal.bonus_pay_yn; Type: COMMENT; Schema: public; Owner: concept
--

COMMENT ON COLUMN public.tbl_etc_sal.bonus_pay_yn IS '성과급지급여부';


--
-- TOC entry 2902 (class 0 OID 0)
-- Dependencies: 202
-- Name: COLUMN tbl_etc_sal.bonus_pay; Type: COMMENT; Schema: public; Owner: concept
--

COMMENT ON COLUMN public.tbl_etc_sal.bonus_pay IS '성과급';


--
-- TOC entry 203 (class 1259 OID 16598)
-- Name: tbl_pay_record; Type: TABLE; Schema: public; Owner: concept
--

CREATE TABLE public.tbl_pay_record (
    sal_month character varying(6) NOT NULL,
    emp_no numeric(3,0) NOT NULL,
    month_sal numeric(10,0) NOT NULL,
    bsic_pay numeric(10,0) NOT NULL,
    etc_pay numeric(10,0),
    bonus_pay numeric(10,0)
);


ALTER TABLE public.tbl_pay_record OWNER TO concept;

--
-- TOC entry 2903 (class 0 OID 0)
-- Dependencies: 203
-- Name: TABLE tbl_pay_record; Type: COMMENT; Schema: public; Owner: concept
--

COMMENT ON TABLE public.tbl_pay_record IS '급여지급';


--
-- TOC entry 2904 (class 0 OID 0)
-- Dependencies: 203
-- Name: COLUMN tbl_pay_record.sal_month; Type: COMMENT; Schema: public; Owner: concept
--

COMMENT ON COLUMN public.tbl_pay_record.sal_month IS '급여월';


--
-- TOC entry 2905 (class 0 OID 0)
-- Dependencies: 203
-- Name: COLUMN tbl_pay_record.emp_no; Type: COMMENT; Schema: public; Owner: concept
--

COMMENT ON COLUMN public.tbl_pay_record.emp_no IS '사원번호';


--
-- TOC entry 2906 (class 0 OID 0)
-- Dependencies: 203
-- Name: COLUMN tbl_pay_record.month_sal; Type: COMMENT; Schema: public; Owner: concept
--

COMMENT ON COLUMN public.tbl_pay_record.month_sal IS '월급여';


--
-- TOC entry 2907 (class 0 OID 0)
-- Dependencies: 203
-- Name: COLUMN tbl_pay_record.bsic_pay; Type: COMMENT; Schema: public; Owner: concept
--

COMMENT ON COLUMN public.tbl_pay_record.bsic_pay IS '기본급';


--
-- TOC entry 2908 (class 0 OID 0)
-- Dependencies: 203
-- Name: COLUMN tbl_pay_record.etc_pay; Type: COMMENT; Schema: public; Owner: concept
--

COMMENT ON COLUMN public.tbl_pay_record.etc_pay IS '수당';


--
-- TOC entry 2909 (class 0 OID 0)
-- Dependencies: 203
-- Name: COLUMN tbl_pay_record.bonus_pay; Type: COMMENT; Schema: public; Owner: concept
--

COMMENT ON COLUMN public.tbl_pay_record.bonus_pay IS '성과급';


--
-- TOC entry 204 (class 1259 OID 16601)
-- Name: tbl_payroll; Type: TABLE; Schema: public; Owner: concept
--

CREATE TABLE public.tbl_payroll (
    emp_no numeric(3,0) NOT NULL,
    pay_type character varying(20) NOT NULL,
    emp_nm character varying(10) NOT NULL,
    amount numeric(10,0) NOT NULL
);


ALTER TABLE public.tbl_payroll OWNER TO concept;

--
-- TOC entry 200 (class 1259 OID 16589)
-- Name: tbl_step_sal; Type: TABLE; Schema: public; Owner: concept
--

CREATE TABLE public.tbl_step_sal (
    emp_no numeric(3,0) NOT NULL,
    sal_class numeric(10,0) NOT NULL,
    bsic_month_pay numeric(10,0) NOT NULL
);


ALTER TABLE public.tbl_step_sal OWNER TO concept;

--
-- TOC entry 2910 (class 0 OID 0)
-- Dependencies: 200
-- Name: TABLE tbl_step_sal; Type: COMMENT; Schema: public; Owner: concept
--

COMMENT ON TABLE public.tbl_step_sal IS '호봉제급여';


--
-- TOC entry 2911 (class 0 OID 0)
-- Dependencies: 200
-- Name: COLUMN tbl_step_sal.emp_no; Type: COMMENT; Schema: public; Owner: concept
--

COMMENT ON COLUMN public.tbl_step_sal.emp_no IS '사원번호';


--
-- TOC entry 2912 (class 0 OID 0)
-- Dependencies: 200
-- Name: COLUMN tbl_step_sal.sal_class; Type: COMMENT; Schema: public; Owner: concept
--

COMMENT ON COLUMN public.tbl_step_sal.sal_class IS '호봉';


--
-- TOC entry 2913 (class 0 OID 0)
-- Dependencies: 200
-- Name: COLUMN tbl_step_sal.bsic_month_pay; Type: COMMENT; Schema: public; Owner: concept
--

COMMENT ON COLUMN public.tbl_step_sal.bsic_month_pay IS '월기본급';


--
-- TOC entry 2857 (class 0 OID 16586)
-- Dependencies: 199
-- Data for Name: tbl_annual_sal; Type: TABLE DATA; Schema: public; Owner: concept
--

COPY public.tbl_annual_sal (emp_no, annual_sal, bsic_month_pay) FROM stdin;
101	15600000	1300000
102	15840000	1320000
104	17520000	1460000
109	16200000	1350000
111	18360000	1530000
\.


--
-- TOC entry 2856 (class 0 OID 16583)
-- Dependencies: 198
-- Data for Name: tbl_appoint_record; Type: TABLE DATA; Schema: public; Owner: concept
--

COPY public.tbl_appoint_record (emp_no, career_idx, appoint_date, rol_position, dept_code) FROM stdin;
101	1	2008-03-01	사원	30
101	2	2010-03-01	대리	30
102	1	2008-05-01	대리	30
103	1	2008-12-01	사원	20
103	2	2010-12-01	대리	20
104	1	2003-05-01	사원	10
104	2	2005-05-01	대리	10
104	3	2008-05-01	과장	10
105	1	2004-08-01	사원	10
105	2	2007-08-01	대리	10
105	3	2010-08-01	과장	10
106	1	2005-09-01	과장	10
107	1	2001-10-01	차장	30
108	1	2001-10-01	차장	20
109	1	2007-03-01	대리	30
110	1	2000-03-01	차장	10
111	1	2003-03-01	차장	30
112	1	2004-03-01	과장	20
\.


--
-- TOC entry 2859 (class 0 OID 16592)
-- Dependencies: 201
-- Data for Name: tbl_contract_sal; Type: TABLE DATA; Schema: public; Owner: concept
--

COPY public.tbl_contract_sal (emp_no, bsic_month_pay) FROM stdin;
103	1300000
107	1550000
112	1400000
\.


--
-- TOC entry 2854 (class 0 OID 16577)
-- Dependencies: 196
-- Data for Name: tbl_dept; Type: TABLE DATA; Schema: public; Owner: concept
--

COPY public.tbl_dept (dept_code, dept_nm, region) FROM stdin;
10	인사팀	서울
20	영업팀	대전
30	전산팀	수원
\.


--
-- TOC entry 2855 (class 0 OID 16580)
-- Dependencies: 197
-- Data for Name: tbl_emp; Type: TABLE DATA; Schema: public; Owner: concept
--

COPY public.tbl_emp (emp_no, emp_nm, dept_code, rol_position, join_date, retire_date, sal_type, month_sal, reg_date) FROM stdin;
101	조동진	30	대리	2008-03-01	\N	연봉	1400000	2008-03-01
102	한영애	30	대리	2008-05-01	2010-12-01	연봉	1540000	2008-05-01
103	조규찬	20	대리	2008-12-01	\N	금액	1600000	2008-12-01
104	이상은	10	과장	2003-05-01	\N	연봉	1680000	2003-05-01
105	조덕배	10	과장	2004-08-01	\N	호봉	1540000	2004-08-01
106	장필순	10	과장	2005-09-01	\N	호봉	1700000	2005-09-01
107	오석준	30	차장	2001-10-01	\N	금액	1770000	2001-10-01
108	이규석	20	차장	2001-10-01	\N	호봉	1600000	2001-10-01
109	전수경	30	대리	2007-03-01	\N	연봉	1470000	2007-03-01
110	이선희	10	차장	2000-03-01	2007-12-01	호봉	1790000	2000-03-01
111	김창완	30	차장	2003-03-01	\N	연봉	1530000	2003-03-01
112	이현우	20	과장	2004-03-01	\N	금액	1500000	2004-03-01
\.


--
-- TOC entry 2860 (class 0 OID 16595)
-- Dependencies: 202
-- Data for Name: tbl_etc_sal; Type: TABLE DATA; Schema: public; Owner: concept
--

COPY public.tbl_etc_sal (emp_no, bsic_etc_pay_yn, bsic_etc_pay, spcl_etc_pay_yn, spcl_etc_pay, bonus_pay_yn, bonus_pay) FROM stdin;
101	Y	100000	\N	\N	\N	\N
102	Y	100000	Y	120000	\N	\N
103	Y	100000	\N	\N	Y	200000
104	Y	100000	Y	120000	\N	\N
105	Y	100000	\N	\N	\N	\N
106	Y	100000	\N	\N	Y	200000
107	Y	100000	Y	120000	\N	\N
108	Y	100000	\N	\N	\N	\N
109	\N	\N	Y	120000	\N	\N
110	\N	\N	\N	\N	Y	200000
112	Y	100000	\N	\N	\N	\N
\.


--
-- TOC entry 2861 (class 0 OID 16598)
-- Dependencies: 203
-- Data for Name: tbl_pay_record; Type: TABLE DATA; Schema: public; Owner: concept
--

COPY public.tbl_pay_record (sal_month, emp_no, month_sal, bsic_pay, etc_pay, bonus_pay) FROM stdin;
201001	101	1400000	1300000	100000	\N
201001	102	1540000	1320000	220000	\N
201001	103	1600000	1300000	100000	200000
201001	104	1680000	1460000	220000	\N
201001	105	1540000	1440000	100000	\N
201001	106	1700000	1400000	100000	200000
201001	107	1770000	1550000	220000	\N
201001	108	1600000	1500000	100000	\N
201001	109	1470000	1350000	120000	\N
201001	111	1530000	1530000	\N	\N
201001	112	1500000	1400000	100000	\N
201002	101	1400000	1300000	100000	\N
201002	102	1540000	1320000	220000	\N
201002	103	1600000	1300000	100000	200000
201002	104	1680000	1460000	220000	\N
201002	105	1540000	1440000	100000	\N
201002	106	1700000	1400000	100000	200000
201002	107	1770000	1550000	220000	\N
201002	108	1600000	1500000	100000	\N
201002	109	1470000	1350000	120000	\N
201002	111	1530000	1530000	\N	\N
201002	112	1500000	1400000	100000	\N
201003	101	1400000	1300000	100000	\N
201003	102	1540000	1320000	220000	\N
201003	103	1600000	1300000	100000	200000
201003	104	1680000	1460000	220000	\N
201003	105	1540000	1440000	100000	\N
201003	106	1700000	1400000	100000	200000
201003	107	1770000	1550000	220000	\N
201003	108	1600000	1500000	100000	\N
201003	109	1470000	1350000	120000	\N
201003	111	1530000	1530000	\N	\N
201003	112	1500000	1400000	100000	\N
201004	101	1400000	1300000	100000	\N
201004	102	1540000	1320000	220000	\N
201004	103	1600000	1300000	100000	200000
201004	104	1680000	1460000	220000	\N
201004	105	1540000	1440000	100000	\N
201004	106	1700000	1400000	100000	200000
201004	107	1770000	1550000	220000	\N
201004	108	1600000	1500000	100000	\N
201004	109	1470000	1350000	120000	\N
201004	111	1530000	1530000	\N	\N
201004	112	1500000	1400000	100000	\N
201005	101	1400000	1300000	100000	\N
201005	102	1540000	1320000	220000	\N
201005	103	1600000	1300000	100000	200000
201005	104	1680000	1460000	220000	\N
201005	105	1540000	1440000	100000	\N
201005	106	1700000	1400000	100000	200000
201005	107	1770000	1550000	220000	\N
201005	108	1600000	1500000	100000	\N
201005	109	1470000	1350000	120000	\N
201005	111	1530000	1530000	\N	\N
201005	112	1500000	1400000	100000	\N
201006	101	1400000	1300000	100000	\N
201006	102	1540000	1320000	220000	\N
201006	103	1600000	1300000	100000	200000
201006	104	1680000	1460000	220000	\N
201006	105	1540000	1440000	100000	\N
201006	106	1700000	1400000	100000	200000
201006	107	1770000	1550000	220000	\N
201006	108	1600000	1500000	100000	\N
201006	109	1470000	1350000	120000	\N
201006	111	1530000	1530000	\N	\N
201006	112	1500000	1400000	100000	\N
201007	101	1400000	1300000	100000	\N
201007	102	1540000	1320000	220000	\N
201007	103	1600000	1300000	100000	200000
201007	104	1680000	1460000	220000	\N
201007	105	1540000	1440000	100000	\N
201007	106	1700000	1400000	100000	200000
201007	107	1770000	1550000	220000	\N
201007	108	1600000	1500000	100000	\N
201007	109	1470000	1350000	120000	\N
201007	111	1530000	1530000	\N	\N
201007	112	1500000	1400000	100000	\N
201008	101	1400000	1300000	100000	\N
201008	102	1540000	1320000	220000	\N
201008	103	1600000	1300000	100000	200000
201008	104	1680000	1460000	220000	\N
201008	105	1540000	1440000	100000	\N
201008	106	1700000	1400000	100000	200000
201008	107	1770000	1550000	220000	\N
201008	108	1600000	1500000	100000	\N
201008	109	1470000	1350000	120000	\N
201008	111	1530000	1530000	\N	\N
201008	112	1500000	1400000	100000	\N
201009	101	1400000	1300000	100000	\N
201009	102	1540000	1320000	220000	\N
201009	103	1600000	1300000	100000	200000
201009	104	1680000	1460000	220000	\N
201009	105	1540000	1440000	100000	\N
201009	106	1700000	1400000	100000	200000
201009	107	1770000	1550000	220000	\N
201009	108	1600000	1500000	100000	\N
201009	109	1470000	1350000	120000	\N
201009	111	1530000	1530000	\N	\N
201009	112	1500000	1400000	100000	\N
201010	101	1400000	1300000	100000	\N
201010	102	1540000	1320000	220000	\N
201010	103	1600000	1300000	100000	200000
201010	104	1680000	1460000	220000	\N
201010	105	1540000	1440000	100000	\N
201010	106	1700000	1400000	100000	200000
201010	107	1770000	1550000	220000	\N
201010	108	1600000	1500000	100000	\N
201010	109	1470000	1350000	120000	\N
201010	111	1530000	1530000	\N	\N
201010	112	1500000	1400000	100000	\N
201011	101	1400000	1300000	100000	\N
201011	102	1540000	1320000	220000	\N
201011	103	1600000	1300000	100000	200000
201011	104	1680000	1460000	220000	\N
201011	105	1540000	1440000	100000	\N
201011	106	1700000	1400000	100000	200000
201011	107	1770000	1550000	220000	\N
201011	108	1600000	1500000	100000	\N
201011	109	1470000	1350000	120000	\N
201011	111	1530000	1530000	\N	\N
201011	112	1500000	1400000	100000	\N
201012	101	1400000	1300000	100000	\N
201012	103	1600000	1300000	100000	200000
201012	104	1680000	1460000	220000	\N
201012	105	1540000	1440000	100000	\N
201012	106	1700000	1400000	100000	200000
201012	107	1770000	1550000	220000	\N
201012	108	1600000	1500000	100000	\N
201012	109	1470000	1350000	120000	\N
201012	111	1530000	1530000	\N	\N
201012	112	1500000	1400000	100000	\N
201101	101	1400000	1300000	100000	\N
201101	103	1600000	1300000	100000	200000
201101	104	1680000	1460000	220000	\N
201101	105	1540000	1440000	100000	\N
201101	106	1700000	1400000	100000	200000
201101	107	1770000	1550000	220000	\N
201101	108	1600000	1500000	100000	\N
201101	109	1470000	1350000	120000	\N
201101	111	1530000	1530000	\N	\N
201101	112	1500000	1400000	100000	\N
201102	101	1400000	1300000	100000	\N
201102	103	1600000	1300000	100000	200000
201102	104	1680000	1460000	220000	\N
201102	105	1540000	1440000	100000	\N
201102	106	1700000	1400000	100000	200000
201102	107	1770000	1550000	220000	\N
201102	108	1600000	1500000	100000	\N
201102	109	1470000	1350000	120000	\N
201102	111	1530000	1530000	\N	\N
201102	112	1500000	1400000	100000	\N
201103	101	1400000	1300000	100000	\N
201103	103	1600000	1300000	100000	200000
201103	104	1680000	1460000	220000	\N
201103	105	1540000	1440000	100000	\N
201103	106	1700000	1400000	100000	200000
201103	107	1770000	1550000	220000	\N
201103	108	1600000	1500000	100000	\N
201103	109	1470000	1350000	120000	\N
201103	111	1530000	1530000	\N	\N
201103	112	1500000	1400000	100000	\N
201104	101	1400000	1300000	100000	\N
201104	103	1600000	1300000	100000	200000
201104	104	1680000	1460000	220000	\N
201104	105	1540000	1440000	100000	\N
201104	106	1700000	1400000	100000	200000
201104	107	1770000	1550000	220000	\N
201104	108	1600000	1500000	100000	\N
201104	109	1470000	1350000	120000	\N
201104	111	1530000	1530000	\N	\N
201104	112	1500000	1400000	100000	\N
201105	101	1400000	1300000	100000	\N
201105	103	1600000	1300000	100000	200000
201105	104	1680000	1460000	220000	\N
201105	105	1540000	1440000	100000	\N
201105	106	1700000	1400000	100000	200000
201105	107	1770000	1550000	220000	\N
201105	108	1600000	1500000	100000	\N
201105	109	1470000	1350000	120000	\N
201105	111	1530000	1530000	\N	\N
201105	112	1500000	1400000	100000	\N
201106	101	1400000	1300000	100000	\N
201106	103	1600000	1300000	100000	200000
201106	104	1680000	1460000	220000	\N
201106	105	1540000	1440000	100000	\N
201106	106	1700000	1400000	100000	200000
201106	107	1770000	1550000	220000	\N
201106	108	1600000	1500000	100000	\N
201106	109	1470000	1350000	120000	\N
201106	111	1530000	1530000	\N	\N
201106	112	1500000	1400000	100000	\N
\.


--
-- TOC entry 2862 (class 0 OID 16601)
-- Dependencies: 204
-- Data for Name: tbl_payroll; Type: TABLE DATA; Schema: public; Owner: concept
--

COPY public.tbl_payroll (emp_no, pay_type, emp_nm, amount) FROM stdin;
\.


--
-- TOC entry 2858 (class 0 OID 16589)
-- Dependencies: 200
-- Data for Name: tbl_step_sal; Type: TABLE DATA; Schema: public; Owner: concept
--

COPY public.tbl_step_sal (emp_no, sal_class, bsic_month_pay) FROM stdin;
105	9	1440000
106	8	1400000
108	11	1500000
110	13	1590000
\.


--
-- TOC entry 2722 (class 2606 OID 16611)
-- Name: tbl_annual_sal tbl_annual_sal_pk; Type: CONSTRAINT; Schema: public; Owner: concept
--

ALTER TABLE ONLY public.tbl_annual_sal
    ADD CONSTRAINT tbl_annual_sal_pk PRIMARY KEY (emp_no);


--
-- TOC entry 2720 (class 2606 OID 16609)
-- Name: tbl_appoint_record tbl_appoint_record_pk; Type: CONSTRAINT; Schema: public; Owner: concept
--

ALTER TABLE ONLY public.tbl_appoint_record
    ADD CONSTRAINT tbl_appoint_record_pk PRIMARY KEY (emp_no, career_idx);


--
-- TOC entry 2726 (class 2606 OID 16615)
-- Name: tbl_contract_sal tbl_contract_sal_pk; Type: CONSTRAINT; Schema: public; Owner: concept
--

ALTER TABLE ONLY public.tbl_contract_sal
    ADD CONSTRAINT tbl_contract_sal_pk PRIMARY KEY (emp_no);


--
-- TOC entry 2716 (class 2606 OID 16605)
-- Name: tbl_dept tbl_dept_pk; Type: CONSTRAINT; Schema: public; Owner: concept
--

ALTER TABLE ONLY public.tbl_dept
    ADD CONSTRAINT tbl_dept_pk PRIMARY KEY (dept_code);


--
-- TOC entry 2718 (class 2606 OID 16607)
-- Name: tbl_emp tbl_emp_pk; Type: CONSTRAINT; Schema: public; Owner: concept
--

ALTER TABLE ONLY public.tbl_emp
    ADD CONSTRAINT tbl_emp_pk PRIMARY KEY (emp_no);


--
-- TOC entry 2728 (class 2606 OID 16617)
-- Name: tbl_etc_sal tbl_etc_sal_pk; Type: CONSTRAINT; Schema: public; Owner: concept
--

ALTER TABLE ONLY public.tbl_etc_sal
    ADD CONSTRAINT tbl_etc_sal_pk PRIMARY KEY (emp_no);


--
-- TOC entry 2730 (class 2606 OID 16619)
-- Name: tbl_pay_record tbl_pay_record_pk; Type: CONSTRAINT; Schema: public; Owner: concept
--

ALTER TABLE ONLY public.tbl_pay_record
    ADD CONSTRAINT tbl_pay_record_pk PRIMARY KEY (sal_month, emp_no);


--
-- TOC entry 2732 (class 2606 OID 16621)
-- Name: tbl_payroll tbl_payroll_pk; Type: CONSTRAINT; Schema: public; Owner: concept
--

ALTER TABLE ONLY public.tbl_payroll
    ADD CONSTRAINT tbl_payroll_pk PRIMARY KEY (emp_no, pay_type);


--
-- TOC entry 2724 (class 2606 OID 16613)
-- Name: tbl_step_sal tbl_step_sal_pk; Type: CONSTRAINT; Schema: public; Owner: concept
--

ALTER TABLE ONLY public.tbl_step_sal
    ADD CONSTRAINT tbl_step_sal_pk PRIMARY KEY (emp_no);


-- Completed on 2019-08-12 01:39:47

--
-- PostgreSQL database dump complete
--

