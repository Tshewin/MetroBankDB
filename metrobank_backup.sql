--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3
-- Dumped by pg_dump version 16.3

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

SET default_table_access_method = heap;

--
-- Name: accounts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.accounts (
    accountnumber integer NOT NULL,
    customerid integer,
    accounttype character varying(50),
    balance numeric(30,2),
    dateopened date
);


ALTER TABLE public.accounts OWNER TO postgres;

--
-- Name: branches; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.branches (
    branchid integer NOT NULL,
    branchname character varying(255),
    branchaddress character varying(255),
    branchphonenumber character varying(30)
);


ALTER TABLE public.branches OWNER TO postgres;

--
-- Name: customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers (
    customerid integer NOT NULL,
    firstname character varying(255),
    lasgtname character varying(255),
    dateofbirth date,
    address text,
    phonenumber character varying(30),
    city character varying(255)
);


ALTER TABLE public.customers OWNER TO postgres;

--
-- Name: employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees (
    employeeid integer NOT NULL,
    name character varying(255),
    "position" character varying(50),
    branchid integer,
    hiredate date
);


ALTER TABLE public.employees OWNER TO postgres;

--
-- Name: loans; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.loans (
    loanid integer NOT NULL,
    customerid integer,
    loanamount numeric(15,2),
    loantype character varying(30),
    issuedate date,
    interestrate double precision
);


ALTER TABLE public.loans OWNER TO postgres;

--
-- Name: transactions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.transactions (
    transactionid integer NOT NULL,
    accountnumber integer,
    transactiontype character varying(255),
    amount numeric(15,2),
    transactiondate date
);


ALTER TABLE public.transactions OWNER TO postgres;

--
-- Data for Name: accounts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.accounts (accountnumber, customerid, accounttype, balance, dateopened) FROM stdin;
1	25	Checking	5076.40	2019-01-09
2	37	Checking	5961.10	2022-04-26
3	9	Checking	3817.24	2019-10-25
4	51	Checking	8669.11	2021-02-13
5	43	Savings	1147.59	2019-02-07
6	66	Savings	7660.54	2021-11-13
7	11	Checking	4237.18	2020-02-17
8	77	Savings	6812.43	2020-12-26
9	15	Checking	9154.94	2022-04-14
10	45	Checking	3063.66	2023-10-18
11	65	Savings	7886.86	2019-03-07
12	8	Savings	4564.69	2022-03-08
13	85	Savings	5241.98	2021-03-08
14	23	Checking	4383.32	2021-07-03
15	42	Checking	7093.33	2021-03-27
16	49	Savings	3649.39	2023-07-08
17	10	Checking	8142.35	2019-11-04
18	32	Checking	4891.71	2023-04-02
19	84	Checking	4472.26	2023-09-21
20	13	Checking	7039.83	2021-07-16
21	28	Savings	4395.58	2023-01-25
22	67	Savings	9282.03	2022-01-22
23	2	Checking	6167.83	2020-06-02
24	69	Savings	9304.69	2021-05-14
25	35	Savings	6351.43	2020-03-27
26	33	Checking	8233.46	2019-07-22
27	9	Savings	6757.93	2022-06-15
28	8	Savings	7045.66	2022-10-31
29	15	Checking	4470.59	2019-09-30
30	26	Checking	8871.11	2019-06-02
31	30	Savings	1702.45	2020-11-26
32	75	Savings	2092.22	2021-04-26
33	29	Checking	7355.71	2021-03-09
34	91	Savings	9780.49	2022-11-22
35	17	Savings	1730.90	2020-01-30
36	73	Savings	3700.21	2023-07-05
37	36	Savings	6076.57	2019-05-31
38	87	Savings	1432.50	2021-09-11
39	64	Checking	3520.21	2019-10-14
40	12	Savings	8497.18	2019-01-24
41	99	Checking	9970.95	2020-03-06
42	45	Savings	8333.56	2020-05-15
43	16	Savings	9201.40	2019-03-10
44	97	Savings	3463.15	2023-10-22
45	7	Savings	2426.92	2023-06-04
46	86	Checking	9600.98	2018-11-16
47	80	Savings	1839.59	2020-03-31
48	24	Savings	1941.89	2022-12-04
49	96	Checking	1839.65	2020-11-02
50	73	Savings	5603.52	2019-01-24
51	28	Savings	5440.44	2022-08-13
52	81	Savings	6576.79	2023-09-06
53	6	Checking	8580.84	2023-03-25
54	68	Checking	1304.13	2022-11-09
55	76	Savings	1338.36	2020-04-07
56	50	Checking	9736.64	2019-08-27
57	16	Savings	1067.56	2022-08-30
58	41	Savings	2706.90	2022-05-23
59	11	Savings	5242.01	2019-02-05
60	83	Checking	8231.03	2022-04-07
61	17	Savings	9108.47	2023-06-11
62	89	Savings	5643.80	2019-12-23
63	30	Checking	7434.09	2023-07-11
64	58	Checking	3481.18	2020-09-27
65	89	Savings	4482.49	2019-06-24
66	72	Savings	7616.80	2022-04-10
67	81	Savings	6808.87	2023-07-27
68	79	Savings	2746.02	2019-11-25
69	33	Savings	7115.37	2020-07-02
70	14	Checking	2869.83	2020-12-04
71	26	Checking	1002.69	2022-08-22
72	84	Savings	4480.31	2019-07-25
73	35	Checking	2908.12	2020-07-21
74	10	Checking	6691.47	2018-11-24
75	23	Checking	4471.49	2021-04-07
76	27	Savings	5331.00	2022-01-19
77	50	Savings	7429.68	2019-10-20
78	36	Checking	9610.45	2021-11-10
79	69	Savings	2730.23	2023-08-16
80	75	Savings	9084.74	2019-04-08
81	16	Checking	8599.46	2023-11-07
82	55	Checking	5020.51	2021-08-07
83	61	Checking	8154.49	2022-04-02
84	76	Checking	7798.85	2020-07-23
85	36	Savings	7150.43	2020-12-27
86	9	Checking	4040.23	2023-10-08
87	29	Savings	7733.58	2019-12-08
88	99	Savings	2189.49	2019-08-12
89	56	Savings	3982.51	2020-02-07
90	73	Checking	2570.39	2023-01-02
91	66	Savings	5330.39	2019-12-06
92	82	Savings	1223.78	2021-12-30
93	11	Checking	5775.54	2020-08-14
94	23	Checking	9511.55	2022-01-27
95	65	Checking	4211.86	2020-02-07
96	37	Checking	9588.57	2020-03-01
97	54	Checking	5874.02	2019-10-02
98	73	Checking	4955.06	2022-07-07
99	33	Checking	2507.04	2023-03-01
100	90	Savings	9984.51	2018-12-23
101	31	Savings	4026.82	2021-02-21
102	87	Savings	7203.95	2019-08-02
103	40	Savings	9781.78	2021-08-11
104	99	Checking	1372.64	2023-09-13
105	18	Savings	2933.93	2023-02-27
106	82	Checking	1224.27	2023-01-25
107	62	Checking	7159.57	2023-06-23
108	43	Checking	4544.25	2021-04-27
109	40	Checking	4660.37	2020-10-10
110	27	Savings	4038.80	2021-12-19
111	31	Checking	1287.03	2019-03-26
112	34	Savings	9125.04	2020-11-16
113	55	Checking	4668.43	2019-01-18
114	56	Checking	2718.51	2022-11-19
115	60	Savings	2822.38	2021-10-14
116	71	Checking	6083.81	2020-07-13
117	71	Savings	9170.64	2023-11-02
118	20	Savings	2383.05	2020-05-15
119	52	Checking	4723.00	2022-01-25
120	16	Savings	4917.12	2021-09-19
121	79	Savings	2335.30	2021-09-07
122	28	Checking	2816.40	2020-09-21
123	59	Checking	4341.86	2020-04-02
124	54	Savings	5650.27	2019-10-12
125	29	Savings	2539.48	2019-06-29
126	20	Savings	6290.81	2021-07-17
127	70	Savings	4496.33	2020-08-27
128	23	Checking	1829.31	2023-09-07
129	37	Checking	2661.89	2019-03-30
130	50	Savings	9187.90	2022-05-18
131	46	Checking	4482.71	2019-04-27
132	15	Checking	9669.11	2019-01-23
133	49	Checking	7940.15	2020-05-18
134	8	Savings	3502.78	2023-09-03
135	9	Savings	9669.74	2018-11-24
136	9	Checking	3264.24	2019-05-17
137	19	Savings	8943.38	2022-01-18
138	98	Savings	7665.90	2021-11-19
139	26	Savings	8082.53	2021-01-29
140	36	Savings	2132.72	2019-02-17
141	3	Checking	6073.94	2020-06-15
142	85	Checking	5650.25	2019-05-12
143	20	Savings	8574.88	2021-03-12
144	98	Savings	3726.16	2021-07-20
145	52	Checking	2918.10	2022-12-23
146	60	Savings	5552.86	2023-04-09
147	89	Savings	9556.99	2021-09-02
148	19	Savings	6171.54	2022-02-13
149	35	Savings	7226.52	2022-02-05
150	19	Checking	7793.11	2021-08-15
\.


--
-- Data for Name: branches; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.branches (branchid, branchname, branchaddress, branchphonenumber) FROM stdin;
1	Hampton-Johnson	Unit 7498 Box 1909\nDPO AA 73909	615-939-5079
2	Johnson-Braun	376 Garrett Forge Suite 567\nSandramouth, NJ 95404	615-939-5080
3	Parker, Williamson and Garcia	Unit 0971 Box 9022\nDPO AA 40663	615-939-5081
4	Goodman-Lee	6341 Joseph Trail\nGabrielastad, PA 86992	615-939-5082
5	Wallace LLC	8352 Davies Parkway Suite 254\nAlbertmouth, NC 63903	615-939-5083
6	Thomas, Schwartz and Wilson	743 Adam Creek\nEast Randy, AL 52770	615-939-5084
7	Smith-Maynard	086 Jeanette Views Suite 669\nChaseland, DE 03897	615-939-5085
8	Pitts LLC	575 Mark Station\nShannonbury, ND 04528	615-939-5086
9	Rodriguez Inc	33271 Gregory River Suite 911\nLake Tiffanytown, VT 83075	615-939-5087
10	Clark-Thomas	816 Maxwell Divide Apt. 427\nEdwardburgh, PW 39542	615-939-5088
\.


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers (customerid, firstname, lasgtname, dateofbirth, address, phonenumber, city) FROM stdin;
1	Alexander	Harrington	1998-11-15	527 Shelley Throughway\nRebeccashire, MD 08099	812-980-2552	London
2	Jaime	Washington	1919-07-27	747 Ashley Mountains Suite 014\nNorth Dean, KY 25033	430-774-1040	Manchester
3	David	Sampson	1972-05-24	PSC 5321, Box 9292\nAPO AE 84802	370-558-2430	Liverpool
4	David	Novak	1954-03-21	115 Todd Causeway\nNorth Kristaberg, AR 20985	724-778-2907	Liverpool
5	Tony	Chen	1963-12-08	6928 Navarro Mall\nRomanstad, NJ 46944	401-579-6061	Liverpool
6	Taylor	Moreno	2022-10-16	18197 White Springs Apt. 095\nNorth Lindastad, OK 01587	766-825-9993	Manchester
7	William	Jones	1914-05-30	2875 Dawn Lights Suite 292\nFriedmanmouth, MP 68078	856-692-6830	London
8	Kimberly	Powell	2008-10-15	14173 Hoffman Flat\nSouth Elizabeth, IA 21150	852-455-7913	Manchester
9	Karen	Hester	1996-05-07	634 Matthew Trace Suite 336\nNorth Leslie, IA 42229	385-497-3434	Liverpool
10	Teresa	Moore	1935-10-14	339 Isaiah Point\nSouth Thomas, AK 49843	952-603-9868	Leeds
11	Lindsay	Carrillo	1926-03-12	5431 Kurt Lock\nLake Ashley, IN 14285	142-143-3106	Portsmouth
12	Jonathan	Robertson	1920-09-25	1620 Flores Islands\nAimeestad, NJ 96084	515-358-0775	London
13	Cory	Harris	1970-05-03	9073 Newman Flat\nWest Melindaton, MA 36154	962-954-7643	Leeds
14	Cody	Steele	1916-06-17	381 Weber Roads Suite 381\nAmyhaven, NE 52737	513-288-7483	Leeds
15	Melinda	Massey	1962-04-27	41026 Williams Village\nFosterton, PR 67509	936-794-1060	Cambridge
16	Eddie	Simmons	2013-03-09	3795 Miller Burgs\nWest Jeffreymouth, DC 38653	748-815-9657	Birmingham
17	Roger	Wilkerson	2013-05-26	6058 Harry Street Apt. 232\nDavilafort, KS 45375	818-567-0092	Liverpool
18	Kevin	Brown	1994-05-31	USNS Holmes\nFPO AA 74422	349-998-8410	Birmingham
19	Tina	Clark	1968-04-16	Unit 9091 Box 9285\nDPO AA 69240	565-296-9903	Portsmouth
20	Christina	Leonard	1972-12-13	97183 Paul Landing\nNorth Shaneland, MS 46875	703-312-8933	Manchester
21	Brian	Nolan	1959-03-13	68688 Carey Stream Suite 214\nEast Danielleborough, MS 73831	352-100-1858	London
22	Debra	Wilson	1964-04-12	250 Andrew Shores\nSouth Jerome, IL 07912	517-848-4263	Leeds
23	Kathleen	Davis	1936-04-09	93164 Garcia Unions Apt. 221\nMalikbury, DC 91853	582-583-2726	Birmingham
24	Donald	Frey	1943-08-24	132 Ramirez Ports\nMatthewshire, VT 30229	361-338-9548	Cambridge
25	Ryan	Fitzgerald	1936-09-21	8581 Christopher Ville Suite 989\nNorrisshire, MO 88569	986-722-6617	London
26	Daniel	Bradley	1936-08-25	71544 Evans Expressway Suite 118\nSouth Emilyshire, SC 18910	450-184-3606	Cambridge
27	Jessica	Howell	1936-04-13	175 Shaffer Rapids Apt. 711\nWest Phillip, PR 95408	930-527-0642	Liverpool
28	Joe	Fletcher	1975-05-07	217 Jessica Ranch\nMayerside, VI 62143	530-114-9359	Cambridge
29	Elizabeth	Huynh	1987-07-02	7855 Townsend Ferry Apt. 056\nPort Samueltown, ID 07785	965-255-3288	Liverpool
30	Robert	Khan	1997-10-18	733 Pace Square Suite 940\nRyanbury, WV 95616	148-131-8167	Leeds
31	Candice	Mills	2001-04-09	173 Alvarado Track Apt. 064\nCampbellmouth, NC 54982	478-843-8109	Portsmouth
32	Christian	Clark	1995-03-05	5208 Jeremy Ranch\nWest Carlaborough, KY 01456	351-614-6727	Liverpool
33	Emily	Wilkins	1913-12-03	86711 Rogers Radial Apt. 332\nSouth Jacobfort, NH 47020	366-966-9545	Cambridge
34	Angela	Harris	1918-07-31	Unit 3348 Box 2092\nDPO AP 15629	521-409-2365	Manchester
35	Kevin	Alvarado	2010-02-23	331 Ross Tunnel\nDoylehaven, SD 83582	318-773-9193	Cambridge
36	Sally	Jones	1953-05-23	140 Joe Lakes\nLake Christine, WA 85141	648-763-6187	Birmingham
37	Nathan	Gonzales	1971-06-24	724 Nicholas Motorway Apt. 019\nJosephfurt, MD 29791	973-943-1743	London
38	Alicia	Fletcher	1989-07-07	242 Hunter Alley Suite 414\nRodriguezchester, VA 75558	617-963-6897	Leeds
39	Craig	Anderson	1940-04-05	039 Tina Forge Apt. 169\nMullenville, WV 91636	953-349-4894	Manchester
40	Nicole	Wilson	1928-10-24	3420 Catherine Trace\nBarbaraport, NJ 53315	809-887-6115	Portsmouth
41	Matthew	Johnson	1935-09-04	627 Lee Lake Suite 111\nJohnstad, MN 32920	145-280-9875	Leeds
42	Billy	Lewis	1959-07-25	5789 Davis Track Suite 389\nDevinberg, OR 53516	929-641-6040	Manchester
43	Courtney	Watts	1945-10-11	175 Mejia Ports Apt. 149\nCharlesstad, FM 56486	927-887-1563	Portsmouth
44	Sara	Jones	2019-05-12	377 Price Route Apt. 755\nBowmanside, AZ 20802	638-795-5336	London
45	Kevin	Patel	1993-08-18	8335 Maria Lights\nJonesfurt, AL 03814	721-403-6150	Portsmouth
46	Andrew	Morrison	1982-10-08	388 Andrew Brooks Suite 476\nWest Clinton, LA 74408	615-160-7369	Manchester
47	Kristen	Johnson	1920-06-17	6612 Derrick Path Suite 484\nJudithmouth, OK 62073	679-112-0841	Liverpool
48	Tiffany	Beltran	2012-05-17	63008 King Heights\nHollyton, CA 03962	888-961-9581	London
49	Patrick	Cooper	1961-01-14	70527 Cain Route Apt. 869\nSouth Elizabeth, TN 35558	119-621-6272	London
50	Edward	Holmes	1952-05-10	0474 Jackson Brooks\nPort Deanmouth, VT 65291	768-836-2123	Cambridge
51	Edward	Reynolds	1967-04-07	645 Oconnell Trace\nDavisborough, AK 48234	748-430-8937	Manchester
52	Mary	Nelson	2004-12-30	0584 Richmond Centers Suite 128\nBrocktown, AK 91110	976-871-0940	Leeds
53	William	Anderson	2016-07-16	PSC 8593, Box 1460\nAPO AP 73864	282-470-3973	Liverpool
54	Holly	Lozano	2016-08-15	7242 Brian Terrace\nSouth Darrenton, KS 76632	683-175-4499	Cambridge
55	Katherine	Mitchell	1945-07-14	606 Sanchez Squares\nRamirezton, SD 28694	819-805-9667	Liverpool
56	Victoria	Lawrence	1997-02-23	60411 Timothy Rapids Suite 800\nMatthewmouth, NE 97028	659-723-5583	Liverpool
57	Sarah	Greer	1994-10-13	98005 Adam Haven Suite 155\nNorth Jasmine, MA 69079	958-608-3822	Leeds
58	Thomas	Sims	1969-02-17	4253 Justin Circles Apt. 226\nLake Rose, VT 55584	532-345-8146	Leeds
59	Kimberly	Brown	1993-05-14	8138 Wright Terrace Apt. 603\nLisaland, OH 73697	109-413-1295	Leeds
60	Edwin	Thompson	1935-09-03	179 Ortega Ferry\nFloresfort, MS 68297	651-676-5440	Cambridge
61	Sandra	Love	1927-01-05	335 Barrett Greens Suite 293\nLake Staceybury, CO 45009	403-103-2919	Birmingham
62	Megan	Sexton	1970-09-29	17402 Sally Parkways\nIantown, UT 46414	811-245-1472	Birmingham
63	Jennifer	Anderson	1947-09-21	7193 Gutierrez Port Apt. 019\nNew Craigberg, MA 59343	677-334-8448	London
64	Steven	Wood	1918-07-24	766 Lawrence Junctions Suite 641\nLake Jessicaborough, TX 13891	775-442-4688	Portsmouth
65	Lori	Williams	1999-11-18	005 Bruce Freeway Suite 516\nNorth Jonathanton, WY 73179	217-794-8121	Birmingham
66	Daniel	Owen	1998-02-08	945 Karla Villages\nEast Nicholas, MP 57230	358-252-0756	Manchester
67	Jay	Vega	1966-01-21	23528 Morgan Knolls Apt. 159\nPort Todd, AR 62037	705-846-8158	Birmingham
68	Kelly	Rodriguez	2012-07-07	1281 Luna Vista\nPort Christine, NC 13306	972-453-6254	Portsmouth
69	Jordan	Pratt	1957-07-02	93395 Fowler Unions\nZacharyburgh, VI 08429	443-100-6051	Liverpool
70	Kayla	Alexander	2013-07-28	715 Cathy Spurs\nDanielborough, WY 47573	491-668-4002	Manchester
71	Randy	Nguyen	1941-04-29	755 Steve Cliff Apt. 615\nEdwardstad, KS 03160	583-781-0699	Portsmouth
72	Christine	Ford	2019-02-24	75427 Angelica Mission\nLake Claudia, MA 83012	396-814-2960	Cambridge
73	David	Franco	1938-11-07	Unit 7126 Box 7504\nDPO AP 18481	953-916-2648	Cambridge
74	Anthony	Scott	1934-09-23	948 Garcia Crossroad\nFranklinstad, NJ 41753	375-913-1592	Liverpool
75	Mary	Williams	1920-07-07	USS Mata\nFPO AP 48974	685-120-0290	Cambridge
76	Richard	Maldonado	1972-10-24	480 Phillips Rue Apt. 547\nWest Catherine, OR 20187	113-820-7731	Birmingham
77	Karen	Cortez	1973-08-10	Unit 7492 Box 5693\nDPO AP 30013	710-736-7494	Leeds
78	Stanley	Wilson	1951-06-08	7657 Barr Canyon\nPort Michealport, NC 25247	903-549-9255	Liverpool
79	John	Rogers	2020-11-06	298 Jimenez Neck Apt. 117\nWest Ericaburgh, WA 73116	926-953-1528	London
80	Sarah	Schmidt	1954-07-16	406 Lopez Neck\nGreenmouth, PW 77833	828-447-7719	Manchester
81	Robert	Norris	1909-06-30	618 John Lakes\nLake Janetberg, NE 07498	477-893-3382	Liverpool
82	Angela	Combs	1958-05-02	531 Cline Crest\nHessside, KY 50073	270-894-4677	London
83	Brian	Thompson	1966-10-03	80489 Michele Island\nHarveyland, AS 36910	864-340-1660	Cambridge
84	Robin	Alexander	1924-01-25	19418 Hurst Branch Apt. 608\nNew Christopher, MS 60328	745-596-7819	Cambridge
85	Tara	Cook	1952-11-25	642 Adams Rue Suite 995\nLake Thomas, SC 24612	743-340-7087	Portsmouth
86	Bethany	Williams	1934-03-08	PSC 5986, Box 2676\nAPO AE 49694	906-928-2445	Leeds
87	Stephen	Baker	1917-03-06	Unit 5368 Box 5590\nDPO AA 43236	191-500-8416	Liverpool
88	Erika	Holmes	1934-08-11	446 Weiss Plains\nNorth Richardmouth, IN 46039	413-943-6239	London
89	Betty	Cooley	2009-08-30	2684 Ronald Glen\nJuliaberg, IA 90725	380-767-8252	London
90	Mario	Gonzalez	1941-02-07	PSC 9562, Box 4199\nAPO AP 19031	500-106-1993	Cambridge
91	Patrick	Jackson	1976-11-23	Unit 3248 Box 0768\nDPO AA 43377	595-196-6073	Liverpool
92	Robert	Roberts	1976-10-21	947 Morris Heights\nCollierberg, WY 11124	708-944-9820	Portsmouth
93	Jennifer	Johnson	1916-01-15	Unit 2728 Box 3265\nDPO AP 19192	266-412-5190	Liverpool
94	Nicole	Oliver	1916-12-20	7643 Newton Viaduct Apt. 938\nNew Desiree, NC 96046	485-398-3550	Portsmouth
95	Hannah	Miller	1958-03-09	9958 Carr Valleys\nErikaview, AR 47527	266-566-5283	Birmingham
96	Danny	Liu	2005-12-12	8373 Austin Shore\nWest Chase, VI 37143	518-800-4670	Liverpool
97	Catherine	Sullivan	1910-02-24	161 Reynolds Summit\nWareton, FM 28224	384-146-8059	Manchester
98	Dennis	Villarreal	2002-06-14	340 Amber Common\nNorth Rachael, IA 25460	902-293-3031	London
99	Mary	Arnold	1931-07-06	35601 Rich Road Suite 106\nKennethshire, NE 61130	608-609-0112	Leeds
100	Brandon	Miller	1968-11-10	8937 Gutierrez Prairie\nLake Anthony, MA 14391	917-363-3556	London
\.


--
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employees (employeeid, name, "position", branchid, hiredate) FROM stdin;
1	Brenda Brady	Branch Manager	3	2014-07-26
2	Amanda Rhodes	Cashier	7	2020-11-11
3	Barbara Walton	Marketing executive	8	2019-10-10
4	Cheryl Terry	Marketing executive	4	2019-08-26
5	Sierra Holland	Marketing executive	8	2013-12-16
6	Vincent Garcia	Branch Manager	7	2021-11-17
7	Tyler Espinoza	Branch Manager	2	2022-07-28
8	Sharon Johnson	Customer Service	5	2020-09-21
9	Anthony Miller	Customer Service	3	2017-01-15
10	Kevin Todd	Customer Service	3	2019-05-31
11	Candice Johnson	Customer Service	4	2014-12-23
12	Steven Gill	Cashier	8	2016-01-28
13	Tammy Manning	Cashier	9	2019-08-26
14	Cassandra Lindsey	Cashier	10	2022-08-22
15	Sean Jacobs	Cashier	8	2016-04-23
16	Daniel Thomas	Marketing executive	10	2019-04-01
17	Samantha Harris	Marketing executive	4	2017-04-21
18	Olivia Poole	Marketing executive	2	2016-04-11
19	Casey Austin	Customer Service	8	2018-11-23
20	Todd Miranda	Customer Service	7	2022-04-08
\.


--
-- Data for Name: loans; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.loans (loanid, customerid, loanamount, loantype, issuedate, interestrate) FROM stdin;
1	65	9091.99	Mortgage	2022-02-17	4.772652284
2	59	17625.91	Mortgage	2021-04-11	1.907450249
3	67	41108.52	Personal	2021-10-23	3.859943167
4	47	17641.92	Personal	2023-02-26	1.744400079
5	10	25465.98	Mortgage	2020-11-30	2.043139069
6	73	32939.75	Personal	2019-04-14	1.500271362
7	57	36839.04	Mortgage	2020-03-29	4.213434779
8	65	20583.71	Personal	2021-05-10	1.610583904
9	57	32472.04	Mortgage	2021-01-15	4.31444551
10	44	14903.36	Mortgage	2021-03-04	1.706343048
11	70	5956.19	Personal	2020-06-22	3.973708759
12	39	20809.82	Personal	2023-02-13	2.173832152
13	2	14518.35	Personal	2023-07-31	3.935153629
14	90	35804.91	Mortgage	2019-03-09	3.436117553
15	52	43281.76	Mortgage	2018-12-06	3.69817698
16	20	36550.86	Mortgage	2023-09-19	1.329538833
17	1	43798.47	Personal	2021-06-22	4.505297053
18	12	47325.62	Mortgage	2021-10-03	1.984137498
19	65	17129.78	Personal	2019-03-10	2.029104796
20	44	33926.44	Mortgage	2023-02-03	1.199491436
21	48	12627.64	Mortgage	2019-02-14	3.191885944
22	39	45949.19	Mortgage	2022-03-08	4.197097581
23	95	44064.21	Personal	2020-02-03	4.350873408
24	41	33257.59	Mortgage	2023-08-14	4.481283557
25	44	8148.28	Mortgage	2023-07-07	2.150795661
26	1	48415.44	Personal	2020-06-20	3.192755625
27	5	11536.93	Personal	2023-05-09	1.503230189
28	15	14410.42	Personal	2020-10-11	2.641412622
29	87	7247.42	Personal	2020-03-11	4.267084573
30	98	20241.07	Mortgage	2019-08-19	1.415753128
31	10	42109.25	Mortgage	2023-02-28	1.601485208
32	68	12087.72	Personal	2022-03-07	1.255884109
33	96	6431.43	Mortgage	2020-11-25	1.047680872
34	17	17026.85	Personal	2021-07-27	1.414957178
35	54	37722.61	Mortgage	2020-06-08	1.690608859
36	37	14406.07	Mortgage	2022-07-21	1.708264847
37	59	21536.75	Mortgage	2020-08-30	3.524823119
38	11	23465.94	Mortgage	2021-11-02	3.643598715
39	95	7293.18	Personal	2019-04-26	3.880201773
40	5	30831.30	Mortgage	2019-07-04	2.111220083
41	9	34674.41	Mortgage	2021-11-25	2.014415093
42	33	29287.75	Personal	2019-06-14	3.518899111
43	59	37629.39	Mortgage	2021-04-16	1.463090673
44	51	19944.51	Mortgage	2020-07-13	3.615670091
45	90	22265.24	Mortgage	2022-09-26	2.454790647
46	64	45313.03	Mortgage	2021-08-12	3.679137839
47	49	42403.46	Personal	2020-11-05	3.615983834
48	53	8395.23	Mortgage	2023-04-07	2.711075577
49	37	46429.24	Mortgage	2020-06-13	4.511769365
50	13	18731.98	Mortgage	2021-03-16	3.688093052
\.


--
-- Data for Name: transactions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.transactions (transactionid, accountnumber, transactiontype, amount, transactiondate) FROM stdin;
1	6	Withdrawal	400.18	2022-04-18
2	14	Deposit	473.79	2020-02-06
3	46	Withdrawal	903.73	2021-07-09
4	140	Deposit	265.12	2020-04-26
5	15	Withdrawal	820.08	2020-06-18
6	128	Deposit	460.67	2021-07-17
7	126	Withdrawal	516.20	2023-09-02
8	106	Deposit	150.65	2023-02-17
9	129	Deposit	706.20	2019-09-04
10	109	Deposit	851.38	2019-01-04
11	117	Deposit	217.87	2022-06-18
12	80	Withdrawal	129.43	2023-01-11
13	36	Withdrawal	950.41	2021-08-16
14	146	Deposit	678.73	2022-03-07
15	40	Withdrawal	474.01	2020-09-11
16	44	Withdrawal	909.39	2022-04-30
17	47	Deposit	688.16	2020-12-11
18	137	Withdrawal	263.06	2020-02-24
19	76	Deposit	143.21	2020-12-13
20	32	Withdrawal	629.59	2019-08-21
21	30	Withdrawal	716.29	2020-08-06
22	23	Deposit	516.58	2018-12-30
23	19	Withdrawal	176.59	2019-01-02
24	39	Withdrawal	468.69	2020-08-14
25	30	Deposit	338.56	2023-04-04
26	38	Deposit	890.50	2023-03-17
27	58	Withdrawal	719.56	2023-01-25
28	140	Withdrawal	754.17	2021-12-24
29	65	Deposit	776.22	2021-08-28
30	52	Withdrawal	450.31	2019-05-06
31	80	Deposit	834.31	2019-11-03
32	114	Withdrawal	395.32	2019-05-08
33	44	Deposit	996.48	2022-07-21
34	70	Deposit	947.75	2021-11-23
35	61	Withdrawal	520.63	2022-04-05
36	63	Deposit	638.43	2019-05-03
37	63	Deposit	717.35	2022-11-21
38	27	Withdrawal	484.58	2023-06-02
39	43	Withdrawal	869.20	2021-09-09
40	56	Deposit	946.01	2019-09-26
41	33	Deposit	516.08	2021-03-29
42	33	Deposit	947.94	2023-09-22
43	78	Deposit	371.29	2022-12-09
44	124	Deposit	420.66	2020-05-28
45	63	Deposit	615.75	2022-10-20
46	29	Deposit	442.38	2022-11-24
47	41	Deposit	900.13	2021-05-13
48	52	Deposit	779.70	2023-06-24
49	31	Deposit	299.44	2023-05-29
50	1	Withdrawal	180.74	2023-01-27
51	104	Withdrawal	418.67	2021-03-28
52	62	Deposit	870.96	2022-06-06
53	66	Deposit	483.35	2023-08-06
54	107	Deposit	206.47	2021-07-18
55	106	Deposit	454.19	2022-11-30
56	143	Deposit	571.13	2021-10-31
57	82	Withdrawal	615.74	2023-02-15
58	47	Withdrawal	869.44	2020-10-02
59	110	Deposit	506.90	2021-06-24
60	2	Deposit	747.36	2020-06-08
61	9	Withdrawal	769.75	2021-01-26
62	10	Deposit	779.44	2022-08-01
63	78	Withdrawal	649.87	2019-11-07
64	70	Deposit	637.11	2021-05-27
65	149	Deposit	466.14	2021-03-24
66	126	Withdrawal	344.63	2023-09-04
67	52	Withdrawal	887.19	2020-09-06
68	136	Deposit	339.48	2022-06-16
69	113	Withdrawal	804.95	2023-11-05
70	5	Withdrawal	251.11	2021-05-12
71	30	Deposit	826.57	2023-05-15
72	13	Withdrawal	346.07	2022-08-06
73	106	Deposit	870.24	2022-06-20
74	106	Deposit	406.86	2020-06-12
75	21	Withdrawal	271.04	2022-02-28
76	82	Withdrawal	243.61	2019-11-22
77	121	Withdrawal	738.35	2019-12-26
78	5	Withdrawal	551.68	2023-03-06
79	1	Withdrawal	703.02	2020-02-11
80	31	Withdrawal	449.90	2020-03-14
81	75	Withdrawal	565.22	2019-09-25
82	23	Withdrawal	201.60	2021-06-08
83	108	Deposit	896.09	2023-01-31
84	60	Deposit	963.97	2023-11-07
85	92	Deposit	652.38	2023-02-17
86	18	Deposit	756.75	2020-11-01
87	55	Deposit	587.63	2019-02-01
88	115	Deposit	156.66	2023-11-11
89	77	Withdrawal	521.89	2018-12-22
90	135	Withdrawal	939.32	2023-04-25
91	64	Deposit	951.16	2019-03-13
92	112	Deposit	628.16	2022-06-03
93	102	Deposit	822.49	2019-08-01
94	115	Deposit	407.16	2022-10-15
95	139	Deposit	124.11	2022-08-12
96	76	Withdrawal	706.21	2023-10-05
97	98	Deposit	513.24	2021-07-05
98	59	Withdrawal	622.08	2022-10-04
99	44	Deposit	285.86	2018-12-14
100	91	Deposit	630.32	2023-02-28
101	56	Deposit	145.32	2023-10-11
102	1	Deposit	620.27	2023-09-09
103	15	Deposit	795.83	2019-08-29
104	141	Withdrawal	637.47	2022-08-04
105	59	Withdrawal	558.71	2023-10-16
106	149	Deposit	930.37	2021-12-28
107	13	Withdrawal	414.60	2020-11-25
108	68	Withdrawal	475.73	2021-05-02
109	137	Withdrawal	626.26	2023-04-28
110	142	Deposit	128.35	2022-11-24
111	19	Withdrawal	680.22	2021-01-14
112	47	Withdrawal	437.06	2022-08-12
113	77	Withdrawal	185.72	2021-09-28
114	117	Deposit	971.34	2020-12-29
115	146	Deposit	141.25	2022-08-17
116	44	Deposit	904.37	2022-05-28
117	65	Deposit	388.01	2021-02-28
118	52	Deposit	737.19	2019-09-14
119	43	Deposit	440.88	2021-12-03
120	20	Deposit	858.68	2018-11-18
121	56	Withdrawal	498.86	2022-04-04
122	92	Withdrawal	444.10	2020-04-29
123	91	Withdrawal	390.52	2023-09-09
124	109	Deposit	580.96	2019-05-09
125	58	Deposit	488.29	2019-04-05
126	8	Withdrawal	468.11	2023-06-23
127	95	Deposit	922.82	2021-07-08
128	104	Deposit	430.48	2018-12-25
129	82	Withdrawal	875.23	2019-08-15
130	36	Withdrawal	557.80	2023-04-11
131	81	Withdrawal	846.98	2022-10-26
132	52	Withdrawal	870.90	2020-06-23
133	26	Withdrawal	901.12	2020-11-02
134	145	Withdrawal	475.04	2022-10-27
135	11	Withdrawal	181.12	2020-12-30
136	40	Deposit	293.85	2020-06-03
137	65	Withdrawal	973.94	2019-05-30
138	144	Withdrawal	272.34	2021-09-20
139	131	Deposit	392.67	2022-02-24
140	106	Withdrawal	650.16	2021-05-18
141	38	Deposit	696.08	2023-08-02
142	6	Deposit	122.18	2019-10-03
143	5	Deposit	626.36	2023-01-30
144	149	Deposit	642.89	2022-09-26
145	148	Deposit	218.38	2019-07-06
146	43	Deposit	173.35	2018-11-30
147	106	Withdrawal	788.33	2019-08-10
148	95	Deposit	704.71	2019-05-06
149	101	Deposit	119.79	2020-10-13
150	72	Withdrawal	135.08	2018-12-18
151	4	Deposit	866.22	2022-01-18
152	102	Deposit	378.40	2020-01-25
153	113	Deposit	655.80	2023-06-09
154	127	Deposit	692.80	2020-11-26
155	22	Withdrawal	323.54	2021-06-06
156	122	Deposit	836.65	2020-09-12
157	105	Withdrawal	313.04	2019-10-19
158	86	Deposit	959.44	2018-11-14
159	51	Withdrawal	368.38	2022-12-30
160	114	Deposit	808.30	2022-06-20
161	81	Deposit	465.03	2022-02-01
162	149	Withdrawal	867.31	2022-01-08
163	111	Deposit	655.34	2021-09-16
164	17	Deposit	209.88	2022-03-18
165	26	Deposit	973.82	2020-10-22
166	30	Withdrawal	326.94	2021-08-30
167	84	Withdrawal	453.55	2020-12-04
168	26	Withdrawal	245.65	2021-10-09
169	101	Deposit	462.80	2019-01-11
170	85	Deposit	802.33	2020-05-27
171	49	Withdrawal	359.63	2020-03-04
172	44	Deposit	811.30	2023-08-04
173	65	Withdrawal	454.67	2019-10-24
174	122	Withdrawal	996.70	2022-11-30
175	22	Deposit	548.33	2021-09-10
176	45	Deposit	999.76	2021-06-03
177	15	Deposit	985.53	2020-10-14
178	59	Withdrawal	440.65	2020-06-25
179	97	Deposit	361.28	2021-12-13
180	9	Withdrawal	260.84	2020-10-29
181	62	Withdrawal	660.54	2021-06-11
182	47	Withdrawal	370.30	2021-11-01
183	47	Withdrawal	961.80	2021-07-15
184	74	Deposit	314.85	2021-03-25
185	128	Deposit	114.93	2019-08-01
186	64	Withdrawal	400.47	2022-09-29
187	59	Withdrawal	988.24	2020-05-10
188	132	Withdrawal	621.36	2018-12-03
189	15	Withdrawal	665.53	2020-06-17
190	82	Withdrawal	825.61	2020-09-10
191	150	Withdrawal	349.71	2022-01-11
192	34	Deposit	278.04	2019-07-01
193	54	Withdrawal	695.50	2022-07-10
194	37	Deposit	722.18	2021-07-29
195	61	Withdrawal	244.92	2022-01-19
196	71	Deposit	895.71	2023-08-27
197	120	Withdrawal	579.42	2023-01-29
198	139	Withdrawal	826.79	2019-12-25
199	56	Withdrawal	831.92	2022-11-19
200	144	Deposit	968.13	2023-01-19
\.


--
-- Name: accounts accounts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts
    ADD CONSTRAINT accounts_pkey PRIMARY KEY (accountnumber);


--
-- Name: branches branches_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.branches
    ADD CONSTRAINT branches_pkey PRIMARY KEY (branchid);


--
-- Name: customers customers_phonenumber_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_phonenumber_key UNIQUE (phonenumber);


--
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customerid);


--
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (employeeid);


--
-- Name: loans loans_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.loans
    ADD CONSTRAINT loans_pkey PRIMARY KEY (loanid);


--
-- Name: transactions transactions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_pkey PRIMARY KEY (transactionid);


--
-- Name: accounts accounts_customerid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts
    ADD CONSTRAINT accounts_customerid_fkey FOREIGN KEY (customerid) REFERENCES public.customers(customerid);


--
-- Name: employees employees_branchid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_branchid_fkey FOREIGN KEY (branchid) REFERENCES public.branches(branchid);


--
-- Name: loans loans_customerid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.loans
    ADD CONSTRAINT loans_customerid_fkey FOREIGN KEY (customerid) REFERENCES public.customers(customerid);


--
-- Name: transactions transactions_accountnumber_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_accountnumber_fkey FOREIGN KEY (accountnumber) REFERENCES public.accounts(accountnumber);


--
-- PostgreSQL database dump complete
--

