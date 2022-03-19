-- MySQL dump 10.13  Distrib 5.7.36, for Linux (x86_64)
--
-- Host: localhost    Database: hydra
-- ------------------------------------------------------
-- Server version	5.7.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `hydra_client`
--

DROP TABLE IF EXISTS `hydra_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hydra_client` (
  `id` varchar(255) NOT NULL,
  `client_name` text NOT NULL,
  `client_secret` text NOT NULL,
  `redirect_uris` text NOT NULL,
  `grant_types` text NOT NULL,
  `response_types` text NOT NULL,
  `scope` text NOT NULL,
  `owner` text NOT NULL,
  `policy_uri` text NOT NULL,
  `tos_uri` text NOT NULL,
  `client_uri` text NOT NULL,
  `logo_uri` text NOT NULL,
  `contacts` text NOT NULL,
  `client_secret_expires_at` int(11) NOT NULL DEFAULT '0',
  `sector_identifier_uri` text NOT NULL,
  `jwks` text NOT NULL,
  `jwks_uri` text NOT NULL,
  `request_uris` text NOT NULL,
  `token_endpoint_auth_method` varchar(25) NOT NULL DEFAULT '',
  `request_object_signing_alg` varchar(10) NOT NULL DEFAULT '',
  `userinfo_signed_response_alg` varchar(10) NOT NULL DEFAULT '',
  `subject_type` varchar(15) NOT NULL DEFAULT '',
  `allowed_cors_origins` text NOT NULL,
  `pk` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `audience` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `frontchannel_logout_uri` text NOT NULL,
  `frontchannel_logout_session_required` tinyint(1) NOT NULL DEFAULT '0',
  `post_logout_redirect_uris` text NOT NULL,
  `backchannel_logout_uri` text NOT NULL,
  `backchannel_logout_session_required` tinyint(1) NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `token_endpoint_auth_signing_alg` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`pk`),
  UNIQUE KEY `hydra_client_idx_id_uq` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hydra_client`
--

LOCK TABLES `hydra_client` WRITE;
/*!40000 ALTER TABLE `hydra_client` DISABLE KEYS */;
/*!40000 ALTER TABLE `hydra_client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hydra_jwk`
--

DROP TABLE IF EXISTS `hydra_jwk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hydra_jwk` (
  `sid` varchar(255) NOT NULL,
  `kid` varchar(255) NOT NULL,
  `version` int(11) NOT NULL DEFAULT '0',
  `keydata` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pk` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`pk`),
  UNIQUE KEY `hydra_jwk_idx_id_uq` (`sid`,`kid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hydra_jwk`
--

LOCK TABLES `hydra_jwk` WRITE;
/*!40000 ALTER TABLE `hydra_jwk` DISABLE KEYS */;
INSERT INTO `hydra_jwk` VALUES ('hydra.openid.id-token','private:ef62fcb2-5780-440d-90ab-11a5e767342d',0,'wjUXREoa3M7d-Msc8SG_hUq1wywiEhjA62yTsr290Q8BX4rCLteUyc3eze3-3iQe-BP_Nuns3VMvw3uASryQ92MiDo0IZE_4kvS4P1-P-RCSITqkBDMzCYyTh1tdo9MvVPrqLn5YDwC_Y6ulj5yl0WvRBgGWs4DU4plHhovW_n-_i5Dl1p64_tqYdjVp9wAZHvs1htXw4T9xovZSbpJkk-p0M0PiQUPNJc1E37LPPYdsnC8TfV8XZvIY1CoQ3dAYnIrTpruy03oP1ttmyNt88kmQwVTseHvBpytbYJPndbvP-zADb2rihFO846txgpDd3Pbl67XW2z7xB8LaN21w3RrFIWxReMY1c4W-AqABjTMCQJUpGIc7PgofATVSr0CelPC8zsc5MLu90KjXrgE1ahXykYVMdhro3w_IlQU2sW-n3iARH0dXh4LCdtY77BmhuBTKV2ebpeTJYZevv5nVAAaSqhds_ivCpLxBICR0GJk5DGGjSpmkDBCNdDKss9rt-iB068T_gisCyaUFYOuvQ269bkhV9BBRhpGIM_xLIzzoq5-jN9njGUBl3JBHcajPDVvG2AhmdxEVhfCC9o9Z3mrvWLChr8bM_r_hw4wPK7zmMezroHHViQtKJxk7sPoyAFYdLunGOX9johzDSR7SsjVS6Sd43Z8vae2z7yiwUNptH42ARnOGhZ323meUw_kgQ8qCO758GkRTt_lFWjgF5K5EYOoM-Tq2WjB4JGaq7Kxdu8juBHB0SZ8Rxbv67k5YlbO-4DS_uiDHT3qLZ6_M8SCc0YtuN4pQr9ZJN2VsLu2eAsZ_XXKxjrTDkBxsyf-VaK4SKwpiSTMF2YWkAdlp7wBLXW2LfBAv5Iu5YrOQ-_ldqaRZigPXm4x_kCl7_z_yUyagb7rf2mqpAsj95_23ROE3TJk4M4NHVWwYACg5t03NjymtsaDFP9MvnmnDkwKf4k8NXqickip1EB9ANwzkAO9keyVHGDprBm4Yak5mQ-EGbFs83H-fQH7PhgEKozJT7MuAq6BAEZ4xPE7a9p-fYFdrPmrYkZaM-OpICKeCvu1nAJY6YSCjrYZEcYYgpK5MQt_0f5wMKE2TSrZTs8sLRaxcD5LoHA5fw0l_UcquueymkzPV90l8gQJ4MXOm3W6_REIPzh7dFfdEMcX1RV7cMrg3Q9R59eryzgiM0WVGOlWLuoYP1DOrb87d1ine1WpHZbDYTOe6EI_ALjZf8Dxxwmn4cUitYquK_Wojo4x11Qe3xs3fBdSzsBus-qflg0Qj8JzHggDO15fvzmEG28N0GFQkyy05YPZxRP69f71PlhoCMOkq3ZnfAipK0R8YB2oeYhbCsXIAIOPZ_y2RnDz6D1rtZocQ9ugdGYJ6ivEnH28a-7kVzyKF04ZeYeZ0hRuU1n6TRSrpjFln-wjtg2ACtIZulwkfdRq51D0K8A7D7ud8D5zqHywmPTFG8txhm4Wl9lS6fEhJGl9ejjgiLDtOaVC0jJXq3c9WDMo_Cz-Wq1VQ6mENQ-bkxx6jTsL8eZAv9ZEGIuzzP0WRoO-2-TzRR45JnHDfdPhgoS_BnVEou0bNLLsRWkoniXB6J0qf-GCgpFU_h4qS2EauooR65duy3tHWVMtkuO7bc4OvC3tMMhLQtoV3BKl1Ni_ZKbHpKZAj8wscqIBEsm2LtLDFr3kIQNBcQQCN45ia1KWdml1OTrMUghEvyx7QozOpDTcCdtYM8bRaTRc-hmu5LR7W1mS7EM0Mz6t9gG6IP73fSzoA8dckaElzpa-T7IL6DHA1gYA0MLd6y4OmK1TFiATr8XxUcC3N7klUOOoZtRgQxgvipENibj6_115tHq_JxXhN3FBww6hfIsVQASf_940_4ayrkFu114_RclhmMMpUvFdTXSv_HKLIfLfFnHakzbE9ve1XrgLVCwxaNIhtBSmJhGwMnHIYeWbYhYVd6-FAU8POekoPP8yjWOkSf2ZbgufMSva1XXeDw44Y21i3QRJaB4UrZ4zvKqu3cVqIPthGPiIOVajgq3sIpH60C8sPJP9ST_5AVcfWouYuA5eITDYdGD47Fu2tWe00f4Ycho7BNtHyV7a8N65D9FLbI9fxGnOzJrJlrRO22ET35SIDqVbSYdjcx7WCpWTn4qLHT15z-r0br-hqQt5lzeAZ5ZGpBrAarX0rcKQwVYUjl42oKfSvUyjtqLsD0P0-mikBz-U39c07LA9OaEmi5tpvh_tTcmLNNGjnW6KUFEZ2juIn8FPad-78YmkcbYooyOwWDckIvLXocnlUdIaktzZJryWzmIG5-7-aVXDgSTqmnMcVADtMncFkq7SbYf3Q4KD2azCBgsRiUxitoC_1my3D_VReUSgwjo2CRdouiOn7BlulIxDWk9QN7K2VHEG8zrWvhjkv0Mlr48JWZtsBj3MdAPAZH8UHvvr6lCJzeKBLyPWjOCCzPbECDY1hWcZa6RoD3tkL8xmqheJWKWRiY_TyPliZw_7IuQwKQ2pbEtUxkmaOvG7BbdTtnzsqYJEYtkJATZurj7lOB5eIxzT9xe8U2frAbJ2pUtOl8UftZMNh3ZIjvU8_ldsCO7VPV_Blm9mcTIZHmyaRB0-9uCrmj8BeVYzmfAONsWWXBcyDsoVytBw2NazvfzSVXdItzC2mMS8sQwh60nWPKDazj69XIt8bu6aUSokXWrH6szmtn13sqz1bGy1MFbynB_IsxfwJnkdneQqVH8DaIgYpj7rKATJIKao5FeBQU0pEMmDaRciH0BgJ0WcAZ8YTMOUwSV6Cxu-C1Weovdk_BNgqzkPRptfKm0FwQSd1MCnyigsL8D3yq_eAY_6RyH_QnbQrxmd4AXY8o1YLEEUjq8xxsQ7Egjfhv5w6DCqi8OP7eBDFeWLU2ucSLgPBlkmTEDLsnuD1GjPxCm_EA80lhXUDGtJusXoCCpZQM5qd4HVTlQ==','2022-01-19 04:01:52',1),('hydra.openid.id-token','public:ef62fcb2-5780-440d-90ab-11a5e767342d',0,'RZsoSAB96lHn99tNXe94mAjsZSBqAR68Dbl2bnQBY4LnLr5WIUc0Rd51ytKDUkLAKhqWnvPWkglIeuM6bf6YUp4F0085G-3qbugDYXUT_QU_ysF0fQ6vG8rz2TzK9LWOra59gv2tiJ7aQM-gU1ZUDEane2un5cVvHcjOshP6X-wnh8UGGmvxXj-bHa31k6MM-69usXimxJrcCwILOSQwYXWctFmt_1eEENrgXczHIsAX72E1SCaB3EMQ3jCvLg0yVnji8GJ-gHulUbAQ4ok2959NWB--hxLKoBb4W3-QT1vNlJwNYBOzJnqjMC2xKhIgH8HyhBLjYA0rKwhr39nnIGVBWIB-23If92UkOmtigb0V70lumVZiC276FoSx-id3e_cb6pLhb3s8JMUJj086uNvOEOOOIlSp5TicgbImhhfrMbQnNhkLpYhcUfhC8XfMWpFWttDsJSgLpAwtHpk74WP4tiGB7feAlVjKu4npM2i1311DbIK63g-7QNAuGf9Iul0ZXhwzlVRndsIOi4ixbmCy5hNh3MIbiyEUIorAlamDt0SEbAUOwKQ9rybzflHi7yo-fh8dZg8cnkIOXjI6oeWr7Z3NQgqAuLz-D382c8fKD19tnJFyKhZTG5Iv7gxyesaQk2u5pH_3kUttLINPRkPmKP7m_J0frCvjr_qKc_PlZgtzohMMt3VlneGaZEIVBACbImmp4O2Sy_L0FettujgzvS4U5ZegzdN5e7dLC4ZVVEY-KG6YehFY256hVf2yBsicSU_FHiTyF_F95oDH_YnZDMGPsdPWojbpe6qwaQXYkrMIORt1qAs0_YnVCnZMtMY04Ch1iWTV5-r6FY8uwyihnOFfK9a7VBMRFMjKofgPceNDwuorOLKm3QGlvI9nihO7LJyXoFq_OEOqX_8wN3P0DAESTxq3aqgfcRXgae6Vdw9tDW0_F2aUJTktm8wgQbfCxEMq4up5DUZABdGIZ50rOsBsupBX5-NjDXm6WZQwJm7j6eAZT42y8UfOfMnXVRW6GcqSc-oE10lZqSZVTvd-9cz8tNzGmD-Z7FlyTynoSyfrdGFHJibvFen0alqjZapRsA==','2022-01-19 04:01:52',2),('hydra.jwt.access-token','private:0c06f4c1-d3d0-4f51-9fcc-d9b5b289cd0c',0,'-Q1KR0bGDk82PKVBNVWEN-ph9kbI0lZBPVvF1o1JtPGct7zjEW0j_zi3Fmu7VD9V-jCjNfIhH4luum6eNwi-3F87uiAejecI29sXiFgrH-kzUxA84lGI_vlaknseLigzRJ6a3IEfQzFslu-l8de1p3rX06P2wk6isxdTfQ5sneezZR5rOxSDaQ6h0zjr2DxJu5kRSR6svfef0hmSv9ixyAn0b5mc7kcvQZncFQmk-iRuaL3QjbwHdM2_nbTwRG-SXOUTtcz3EBBChEIaaVsUIxBWkGt1sQKM-kyT1-kdw9oTbEXry_gfaMjhMxZSWpJVAEVHwRNkj22aeYBkf36befPV-vO5OaYZMLizOceR0_qbuaMnOIimFGaCDsQGX-nb-PHdipgpSXkI-OXqCZuDPk8UpYL711Xx62gghAHZUeq_vQKdfW2G0vJ1BjcnAzkuy8NG0eGbLsKbNiX61zxjn4R9d5rSpk9kYQhAmYtqyGycCJ_Si292swpfqvZHV6eIHU1ylHb4yDOEOURKlFGhf8b95haQez4dGcqCd4NPKZ9Jc2L-Aexdi3vYksRyuNVPtY6Dk3pt4m9qlNQXovAC8f7ka_w_YvNUx55p_ogYnA50InDYAKQlh1L5Rv3sNL2dk_OZ58THzpchjUZzDaG-_R1juwei1aI9l0NfathyCFXBsG0NYa4jQ_iuoMKs_ZD7auDWzNK3T_EfDfucra5sRDOUCW_rldkk3W9wmbefhk0khEjG-jP5vQXRIUSAC-tGB22fUTseZJv6SXeYMbN7lLela-WOjkBCCGrHiuhHuqrNbxhVnG4R3FOVCDdt2FqvvClAGS3SsSfR8o5oVV8CA6HJI5geGUYKWYwcP5EvXEr7nvOSV8gEI5Vw57DAcdU6KEmYXAKJCqMjmaUVsokECJxA1i492G_GpJtuU9SDfI5PwZ0t_9nz7BJOFmXTSqcUOb4TPN02P5ILrqG9pT6lLipb66g-xcBFj-zOsqoWC7DcnGTi_4fDAlObNldBtylX3-iP8MR5ApwqAKy47FqdBi9zdGSIDxE3uHKNE1une9zZ9t4_ngKD5BeR2-5uYel0Nb2jL1o-xeh9yiNXQpxJZtyni2t44y-ORD3kzb3QdthipHalzcPs8vbQSrdbGH5L8c0Yx_Bzw2ziqXb-vPico1LUdKYXDlPxXDMM0DBnzevkuuMYT0kDV_EwyvW3LbB9MvrkNtBPmJf2-LvRgXH7qbeLiXDZk99yf8mrCHn8Ana_CGe2iZjHS-7bMyWF-MRvLFLu15qRxkCiu8tWP3Qzjq0UcIEc7qiCVvAGNKWHR_bCYgEJUg0izxa1cRJkYuoTDUbYb8r26y79twrlP6AdjeV34ql7eMRT3NE4JctVLjJtrEOWVU3ielIloTxwfYLnYDaocswAH-NA-uOqudk1JgvCeSsPDdeUyhqsIDqezgkjl1KBNy_z7inAvAzb2Z74JYTKMHv7XmFZLQlTfsrPXK2NXQgk5WymlFeu65YlDS_lgHxHEyGLyiU7ry9GTWm-uYwwGU8mQY6brra_jshDM_P5YvCpVmD-edOCf7mYjGpfgtV3M_fOiWCRpImL-BZzJ_GNvJ2IjEe4-VUw_ea18U6SZR6_p3Rezzraio-S47q3SvRh4lUEmHhn-CQHSpMSiBP-L20iI_buy8cgCtGFghf5S_dR6sgJWWrjn7HaQ5N8E_O0aCUZXywG3Avn_fSY8xSIKJ4UcSzdazqgcPsPQjbY8PHUfNKN1iyJVRDpma6y-uynBrn9689Gla5mvydqD_k__p5TQvx1NDkp2WeU87OOtcfsluy3bZawdDVMx05I-jy4ofYaaMLodppCKJLKVZfrGsOJCb3G2b4yE68cBIQpuMjTFPKPGbFPFz7f8TqWkEPnjhvu6W94STvEDzPe7yksRldAW6hW3MyVj5l80ZuIB4gBz2I15QWW0FyWtYL6hLNJO_PMOOrVo3AjJN8E719zJwWU9Bzf0IzHsqRsEbgNQju1ZCgjyJRn_WNXLAk7qRME9XsCjUL0H67xRz7I8Riy2TWTorw9Nbkxay2Jc50ZiElmiIxzuEJdtHKv6EwkcQFGsZ6RGFB0P6SZjmzFX9d76h9ptm7t5nZEDeMbDXL9AuMZySxzgy58J-B-DpW04nPQGbDsqPVvVha3Vnx7vzr95yQqHLjY_UVR-8wVCGVdJCmFmCd5B1uVdZ6NdrwlTY4oXGtHeNy5PBEF0m4pNkosTCZ9wBRoszXRSEIqzfm3D1kiXx3TfrvAuxVYRhHdtI0oQIo85WOJILZHM8ce8ByHGRnaQ9K5vYPptvEp7R3Avfg1_VvTik9AJoekZa6W-4uVRgtS4_QXW3XzaM_di2wBtpzUatfmmqTYRYzPo8QZqJfY5sUELV15e1oi6luOa0B_DfdRAjpLDDCl75aSNO_BJvqdPUEv-jAVMyUZl-XX_Ep9YxPNMGMsn_dad05gbcHWYxWMuAq-DUrob3YQ4MVw1NLPrzdp7Q4zn2CP-6T1Rm0_hle85NWxBTyGoBfQ8yHUPWqYU3LWwArKzaEXFr0EJOHmTUfJ_JpPKhhwSQScTboHpC-FMZFSgDA9cM3C387HxV9et51zOUf0A62XVzb5eNZi4jAgGmtocYCV0HFDDYUXYpDNAjDZH8gNoTLc3okMMhJnytXmhivhKtv48COVzWD7G5mpmwFhNqQdJnlOdID2PGpZzHHVceyCvoIs8WflPxxQyNVatkTMA4YLiQkEDiBk4Kmiez7OrFXb0gQ7olEMgtVR6i_9EPkLpF4g-sKDgc7XA3kon0AD2lLLP4uBDVUplquLcyFSOBZTrXwpF8hg-AtuZVblsZGN85Tl9nSRj-uVVx1_S78OldQzH7bLKTkZJdB02bF-M0fJRaUrMN9LHK9-lxlGsC0HxMPCX7qnxXS169EtueQbRL8kqg==','2022-01-19 04:01:55',3),('hydra.jwt.access-token','public:0c06f4c1-d3d0-4f51-9fcc-d9b5b289cd0c',0,'-ftwBiMpbWrnKES7wIEGYlxupi1FcgWrUYotnA8vWsfoYg700TFfC7tUI9JAjImSIGnyUkvGHWMvR-h4OioKRl0kddp56ROD05g7zE-vaLiNJrrO0XVvTEWc0yBYy4tsRMZjdaYleYqrOhgx_eipQVRsIF6Os_LiRcNFvkUY8lCr6n1T_67-3a7PHk19EzvF2XcjEWei3m2JXJoY43jbFiRSMDY5kam-MwZXsfLNyQmP_IuAiFDCaovrCfhg1E2Ib5dpWAEiEZ59SZPoYvOsmT4PNA3o0-aLtjZIfp_HIQIXa2cFIncIUEvqOtqdjmkmQYJ7tnERMRN71DRQbBl7FVWBpww11z6sTY3iUarNfXDSVT58_xLX4aV_dSwdcFd6xBGutiEiU8ooghjh2qL-wpSvazyKjlIoF-GZG0vaOs9D0srhxk6DBBpYqAvC9bdjdHEL8AIRs8KccN5WUzO1wmdCwUjZxLfZDDbm9wvzq3rgzZowr9vN_QJkpMORyb1-H5y_v1bLkLDpPT5m95sN99AcbpX0m-jxt1XcHv7YUrI87blW0mge-JpE7c2zqYiB_3a0NmY41D0ygmFjJ7WOy7fktus-05IvwopTHgr_2KcWD7rTrPdE9hNhh2Sd-Vidx2tTU3YEVeCzkPiJwxhUNtDRnee5tKVqNLYTuYa5e-EafhuM2Zo7MTXnTA4UEpzfEjQZMHAcsuLDTeq4J8iKlguypHH97Oy_jRIw8W1Dky0xW23bT3ixvFyJOk8NXsb5ZgTqadurnwRjF4g_d-dEcNEHlZOBdAPVHNLtqpJr6t1g7taphYs_36gNmgkmHoEseQUWXCVM_mYpVsN8k65nytUsSHb5Pf93GSMK4zDUmCGM-pkHQr80nCX2u_t4dJ-GAJ_-3epD8XW8a-s-l7NlYaUpg8M-aM_CyCssJSvPSVogaa_LdMTQFhdA1eLWFvbqfWwNordrdeReR5-TP4kr21_BG52b4xlHSEVcw0eSKovp8wD40ytL5wbbniFh7NqTibPr4QHI3FZtHMKuoxF6VizhF_7BCq562Sjs0J-C34iCs_Xnvq58hSqX-k3geDqzbb8zGw==','2022-01-19 04:01:55',4),('hydra.https-tls','public:631e07a9-0531-4380-829c-205f906c710c',0,'lIcny1gjRO59vmZbB2xUX-cvclLxVwBqOUkz9B4UOG2B4srktYH5kvYNIdS2ZuDLqUA_QYmY3K5E7Q2prXhP06a2JYOfBBl0Mj6qZNa5jQ5yp4TTqH37wSrKmA1yULnu4u7k53sDTCFkcW99JfdsIyQJE2fBkwsPfSIuKtBicw7TrM5WMJLBu1qCdS0w81Z-ftgAcuhaN2rufRFb_HSZQBfD2hk0rMLxw2u18l_Ub-2zYxI6I5Rl78ZgDZycAjmtbhBMEmaPZ36Y6Dd7aS8Sjv2HNPKHiwljB20XVSN1hS41YaC_YaiRO5rUnbhEltuDHeHgtlXRuHd03MQpt66d2kpCNpDwiDNOJxvDizj1XRDIBbkQd2vLxXWYkCFSST0_bfN6kovUTQt8Gw3Bm_XruWD8T4ceT598ky2NaA49vpS694WKxXKbW2SvU0qYqjQDJF28xL7J4jpfrbGq72xCei7s5Ab7J6Y6irmzKc922GPAmOIe2WieXz_WXWFbL8SMKtBc-bMAkjSqM61KHL2b50D7qqh5gW9vU1U7PLHixP3J2fhyL7XtjwvsVXATstoSTuwWKCTRZgGLhCaCgT7SC502hTZrXBm1-c-NgzP-n_DsRFzZT-7YyrKDOZoxPjFsjRPQYbsm9ULxt_lJz-RqdZaLZAOdRnKS2oBNybak1yCvcCmyA3nqsinTWAsz5ZDb9y6pG7kumlBQoHza9GiPZ4OCdx9gUD8hQAgvov18q5YB53gz90Xh8EqBVIlHoXJVTfR9jc1U8ntEHhTyEdxhVnAjcWtBbj8SZd_KIn19jn7U9Wl1P6rMfo5VHV86RjEFl5K7QyupS80W75kT0MC4t4GA7T19pf3IQYTaX6_uO-8WJ9ZXgpYt7I6D-dvQ9aKkKA5P03g6ks79Hi5UNjK8llSk5EDUzmecQGpDLJF4U2I5dAn_tkJNcN8HixQqAE3XAiBOfca0ynGd4H1ptVPTLyy65zG1QazUpbMU6ZLLm6LIgaUlc4PScbMJbFsr657VmdyxcrrBKFSFfR73uHeGXjrr1P80UpWA3Yixn_xceQJEc1ADJJZoURBuE4nNFAXyBI6dIQ==','2022-01-19 04:01:56',6),('hydra.https-tls','private:631e07a9-0531-4380-829c-205f906c710c',0,'gY6TodhMLwUezBsNvmOgDxKWUpwhUNXPXTgJPyztLPyAe8Xyzg-1aQsc3DRkkCuYXiMoG3JWe7aKrCDshxQ3wYK5HnVKQrqrtmf11_bC36KlFAdaCb-XrMNcXFxbDHBi4B5ZazSpKJQqNiGNSXqM3rtAEhKNy_tAr-v5vui6NuPxj28lr-jxd-6C1GJa9n_k4nc0MV2bsleST_SLnblBP4jT7_Ap5hwDliSyWXBw2EafeGyOTCysOfALw_uAFC523IDasWVKoSM-uQOEJkr2AAa-uRJz9T09IVwfxFyraRRzvaG-bZHF2Os5GmTap2tell6yTENNL3l5dKBKH9xTQZ2gtxiyAIWDeAMMW4LFy6s0cUKmO7-3DNnd7BZbSatS6xtv7R3Jc-RNeaK4bFqc-FJOQgHdIwf4XoxPsx2--w-PHE6jyfC1rB5QPwbu2jx19Ruats9mMcBnSm065CwdvMvNedxgj_JsxKDf8r0JGYGdzlY0HZzHUNy3_sDpI2OS4f6dEZohCSLQmMioOWJM7VKKe0tl5f11ew1CROzaf8b7pf1YEs5QeLzFwPv_RcAoru21fw-zxMJ0vT5_dbGt3q5mB1EMdaB_uegh-5l_DYiIfKa-yXOsFH9uNfM0RbhOtceH24hjKeOWk_dwXD_HfS1E77E8ANC3-cjsq0q3Gxyb4kk7cz0tz6rXoiuYYMRZZFVYWcHtDFn4N3kBGR8DZqKoVVp8a2AAnTpZcvD-pvtwHii9ORLxROkXR_Hc6nOod4hV4kw37G45ha8VGcnlzUqgfJFDB8bot8Ch4g8L6M0cYB9ZrAEcAkAfdIW6fgoNbc6CcIH4JVrXUvY_tmsNID8ZiFfB82UqETUa6bN5ETXoH9nyFqMAWLhN0KAycfQ-qt_xMhHWTBlmbULPaA4D9PSTnNUXx7qf7whxVbUCcSD7NKhyFycsHFoHOstEJxrKrVZIo6T6VVi4D4FaCGnzr7TShxWAgzc4s86b9kIX7LP-NiuuqXigd1vjWDX3esKKmLzp5cK4ZT8KYCaCiw1kNYvH5DvGKwoWEmuBemA_E5wpzleJzs-6JSlQvtYVHwa6zDxOAJyCr9YnIDXCuDIf_ugCkbvNjGIDAd29Y4rR-wiotbWUl3RxvgpdcWIaQiK1bJmf0bqszMBiZm4UDGd0DoaPGZM86tv_-CmkIvlvjHbgRz-mASsv6W0CKdmqAJqhYu3UOd-SGyozr0tmTTSnGR-rO7aP5bJa5cZwZ8_8mNOnsHhzXNfUu1Y02SGsHnfhpFA4vSEhw7yefUheoAb_iXn6rds2sfMDMJbuMl9B55qzyug6QNr8UKTqpnJXJg53opHE8yBv-16QyR4naec8QqA51_Zi0hPTLKXqZw7y1zEughAFiesJuq-JvdpIYmN0Sq6SFg70v5uUFuuhiga6MR1sCi_uAquP-al2nzFxyYsNhzv1FtW5f5_GV3E9CbPcbrC7XSgWtt0sAjlbKnG33SptFV7W2stsdkWC-Xs-9GWMBrybPhemAhLkdYxWHHHu62M9GuqMczUatMU4Jde1ei45DF6VCoTPuofG7ZFu4WRHdAN6I3NSMHWBULLuN20F7GqAXq5C9I1rw5-DaLaiX2jvVg9XqZ3Q5kmC6T6xMwkVxZ2ezOsdW0jj598zbyVnENTFliuR0VnjY8WX4rEKp0MJfeOMt-v4T-akE820IxOAyiH9kTwYDBZB15i2Z_jDzF4IhnFD1hFwucXpp6anbMZKIFSpOdIMJwvHuwRPXiErM2pULdow4A7AS-I6OrqoucYm5ZG26AMEtaYn3jMDjagpY0QNFYN98YG08tVostod-1o9J73hlEFdmoaYuRpVwdHw1oujr_OhOkunP2n1Cc6rpAWD9vEuGtbyMYHaJTVg2GHeNmcNnnsIftHr6SxC0UDugd81-ZgOMMQxf06XpI2WSGvFy5JcEgrpyfRFBwPD6NaDrqncNW5dRF9Xzeyx5PkVZ35zaPmDNehYpdLFsP45YP84hF5G5P3wJelvma_a2u5v1uItoMB36l9L8KSPNVD8WCIp5Wn2mJ3AV5QBUvcc0vcEIZ159_AOA28lynHpyueNmn9N3CgvjwUSkEhVmqT_D_xBC9VqCyWYic4dpUQVadT0IWkiaRCDPimcn9piw6LOTuiGxKn3y9S_xRWHnMoG3Yocn7nKAz62qCAnMGSjB_806dx9otOphubCNMxz_5OM6TBiGc3OayXFkOUi0II3uZcVMMgGvQ7yUQ2y1eX9u-U7FHC_dfnAa9TBDwwICREB-_cfaZvsG0s0XC8W2XnbU-zLwF3XnfdZdd80APCs1IXbJhwNoXd81Cl2_kU_TDxoqtY0aSJOIAXVTfeSaJzO6ei3jXcnA08PV5enexXyOJpzqWoBq7ouN_89El0hwrTX_NxmNn1MOLskrOYRnTtyCKjki3pDRnVwhOA_M4Ee9ecDaBkE8ngMN0QPVKFCl2uCYFZfFH1abNXW2iu21ndcd0zhwoY0VcDsVvfZCdUUUJtAUlpEzgH1YiHAbqwetCD6aSiZ89MQZLc7ThLpfAE1f-kNnTOCJUgvcOQ7NYnVYYSotfEOIxrswlmFK0grJ4gabe8ZJOvA_IMqX0uQ-doe9cBUJlnmuOswSQEyL311fbiuMFNR3zmuaV3GcqklgucWDHW1XN6kiIuVd5hQBNqk5ParOG5_u5Li5WFhOBOTFO6qy_rQRPRBm1xh-aaFAvUAHn5JYDtSeSl8J_ZTmJDwMwwuST7jXWDZK9ZyX4DH7vgDi6V0mgP2rCl2W_6O6P_YmwqJfmOiKAquFJkdAtoPX9tECrx9ffMDNDwspQljAIqFoNJMV2sErUNShbDpvfSKAT9p1Sz9eKrmKpFZH-6tV2aZBu_KQGj97odKgC733N3o8A8_ixj5aqyBhzXCBN0myHMQrmn4pODDVIOruBTOZ_Wv32m08Owci3-b5KfP-Mn73n2NpcR1I4hVAW4BGSD4qOSpgL5a4hxHQ6ikniTa__XL76qq1dS3E1DdY5k-W0_3MqFNn7QSDsCIb88gJm_cfud5IOq_t-qy3jClaTmD4uFjs0-14CylS77VxvSMsILxZoc6Gft1o2Uuzxy1mCHAVHdGVzPhevrG2U5aBPnTSjRvbFOnmJTNaqWGSmcEQK0CWV_k1gWYZA7CmRxrfwcJ6SQPLIjAMc_t5zpdtEPgXHjzjG_nHr7OT0uX8IF8Yyj6zkYoEZrei4uLH4_yu-3KPyKA3JgbF0jrel8Gv9R26t5j1YteBfg2j6_kQTRSm5frVvWr1fGO4TNkDUUNZOLVHDQRfrx06BjSGoAggrGTZuOMYgSi0MQiu4zkrE2qP1_2fiyTABrx6uk7ghx-sUjZqGdW-SHAOxYH-OarIIIIOGONTEGlhjeDem9Z5spWhllzIuMrq4NkLmfNcbJ22QbvNbLFk4qosTj9aYOb854DvuthNm3wsghdm32VeMv2QTWMAbmg9Kpa98DTQsxf_tgaUTBzBoO4jA8DWIlKfTGvm1ZjIOD7sH3VM9M1Sp6-u43lSLB0h9cKB6lJmQUr8Kw-XJrWkabgyuCnmDUvwsGLRUz65yLDy6Ns_AKgmmwRkoSwYXY74FS0vEi7mrKuR6mZJJFZUwWLRxUxAd9R3aw2cQarara0DkZ1D79nXFaLGsccb2vTmwfzTg57VRW3E-lfU1d8rBTS4_iDWZYjxutf6JH-5RJNJxFu8EbCU_UCoAmHQ0nrN2pS8UZqc5bCEAkpR51GteCYaq_siWcGlX-s9bhwNYGu1iQDgjZZxSMWqMotr9Z6xByfqeCr_xO25i_keEtg5db9GZlnIymtR-KT7rn_j6UxZ8x0RngfFoPYGi3wve59wPRcU0NO44mG-SCiYIEKJAk3Fq3nIWi3d4xGsRzaGG34lYOzPrqaOxznbyMFsI1S8AbvebyclVn_xdjXzP9SR3I5JtL81iOfE22O3WeMF_8l3iaQW2pC_mOYmiX-chveIeIjvZWl1NhLMAtxfpOEcv8I0rJNYKYaNrkMXn6wYZy72rHqYBGVInkqQZ-6MCPYdevp1pDtgDHBlCuaA6wzCVbleB_O6ZfDp9CWTenwa98ogpkj-xozskY8_HTBtyrtl6bdHJKCqxEgzdSBlvfD00CdAS79rGGD5fX6pVESOt3J6C6hEwQvZjgsp65vcLv8Z-Va54hFeyqr7xQ7-nH5f9VE7x40yj8RuVxR7d44pQOrGuOphnqzQX7rXFJWCOQmXejzssWiB4FF1S-65qxvpKLaU1W7_6U5gpUuFIPnnwZBedPDtv3WbcypE1pU2GFHrxWGBdpgs1sfxIabyS7TZsDJcCJuNN497pyaPWd75pSxjOHIMKipiHg0CT2bgoKufbdamfUFQzjht4R9rwSethHW1gkC7yvxI0_OIgZUYgqG3WOjM7dofDhZGU3YxDeAco4HZNFdzgQgbzfGqsXN4dcPJKwg9tR65GcVBVfbhQKrWfy0fIspPu--Yg1pExPiPZob6Nl-KePmJ5GLfKgoXnb_UNc44vonBQMB_dlTqzT2_vyCQpgHZKi1A5vLAMGy1zw_7YFwino8aLVvDqqKgqqKGnpCzxFt_ZdDdwVxB4VCUZxKNJJL2HGIXKfvL9X9HkqiQx5wF9UUcLNNn68n0nlULx5f5cQfgpqPuk1O8P_xF3uJ_sS70GT-WSpI7MxiB8SGBV15V5b-dO8k4ldgUTUflglzFP3TEREOlAgrHYLN9Eh3mVDPr_rM_PFtujgBNG-ka3tz1FWIb0w7186mdhoEsCDGzmUKYYzD1ysZnQkMU1IRvuBfmqnl9opfxzELOJyMdUpZq8kKOFkWjgKMS_ucxUJZJJU84WjFC_pJRU7k5FYCjesA2_6q70R9pZXcY8dGxrpmKGtFPOjN98V1h1UuAEuoqsHylFbvTOqirQ7VUTct59EzyHCE5lg5fBUELbuG6EhJtPXjsSj5mP00g89tTeZL2fqjARgPiOj1JAejhLMjV_eob1NcqxAp1VqgqgONdGJM413_ZKSnON6u26CgySZDZWMpHBfDILkBDr5O4L2A6-f-CAFRGpsn2UQkrI_1HwjXBId8QLdDVd1UehhmlPkNYIRekN9H3fXBt3S8V1-JkQ1Twxh_DOpGZHplpsg4l7ZoDlilLQ_YlIRvc9zwX76uOuoEnTV031wxm5M0isZtb98HRoUBNJ7PHXS_bPYCk9yRNhimxZUgNi7qgRPJaiOZYnxRMik2MmCRcYa5NO0w4PXi1OimGVg4igRQSN5rF0W2bC3_7BY4rtr9N34uNxSgTLWJm9fHZ4kSVCnN7EGsayihJL58XgB4GXnI8vOG02eDOyiq7bEm5TatA0C-kfs1qD6gg-bqxCQJSQuJSFdO_gZ-0zpJ1CnSJEJ9ylay1WA5TFC6rGFRvrDtB6-_3TxNH4f9GbtWSAPBrEO_fjGyog25_ibbglJk','2022-01-19 04:01:56',7);
/*!40000 ALTER TABLE `hydra_jwk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hydra_oauth2_access`
--

DROP TABLE IF EXISTS `hydra_oauth2_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hydra_oauth2_access` (
  `signature` varchar(255) NOT NULL,
  `request_id` varchar(40) NOT NULL DEFAULT '',
  `requested_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `client_id` varchar(255) NOT NULL DEFAULT '',
  `scope` text NOT NULL,
  `granted_scope` text NOT NULL,
  `form_data` text NOT NULL,
  `session_data` text NOT NULL,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `requested_audience` text NOT NULL,
  `granted_audience` text NOT NULL,
  `challenge_id` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`signature`),
  KEY `hydra_oauth2_access_requested_at_idx` (`requested_at`),
  KEY `hydra_oauth2_access_client_id_idx` (`client_id`),
  KEY `hydra_oauth2_access_challenge_id_idx` (`challenge_id`),
  KEY `hydra_oauth2_access_client_id_subject_idx` (`client_id`,`subject`),
  KEY `hydra_oauth2_access_request_id_idx` (`request_id`),
  CONSTRAINT `hydra_oauth2_access_challenge_id_fk` FOREIGN KEY (`challenge_id`) REFERENCES `hydra_oauth2_consent_request_handled` (`challenge`) ON DELETE CASCADE,
  CONSTRAINT `hydra_oauth2_access_client_id_fk` FOREIGN KEY (`client_id`) REFERENCES `hydra_client` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hydra_oauth2_access`
--

LOCK TABLES `hydra_oauth2_access` WRITE;
/*!40000 ALTER TABLE `hydra_oauth2_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `hydra_oauth2_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hydra_oauth2_authentication_request`
--

DROP TABLE IF EXISTS `hydra_oauth2_authentication_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hydra_oauth2_authentication_request` (
  `challenge` varchar(40) NOT NULL,
  `requested_scope` text NOT NULL,
  `verifier` varchar(40) NOT NULL,
  `csrf` varchar(40) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `request_url` text NOT NULL,
  `skip` tinyint(1) NOT NULL,
  `client_id` varchar(255) NOT NULL,
  `requested_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `authenticated_at` timestamp NULL DEFAULT NULL,
  `oidc_context` text NOT NULL,
  `login_session_id` varchar(40),
  `requested_at_audience` text NOT NULL,
  PRIMARY KEY (`challenge`),
  UNIQUE KEY `hydra_oauth2_authentication_request_veri_idx` (`verifier`),
  KEY `hydra_oauth2_authentication_request_cid_idx` (`client_id`),
  KEY `hydra_oauth2_authentication_request_sub_idx` (`subject`),
  KEY `hydra_oauth2_authentication_request_login_session_id_idx` (`login_session_id`),
  CONSTRAINT `hydra_oauth2_authentication_request_client_id_fk` FOREIGN KEY (`client_id`) REFERENCES `hydra_client` (`id`) ON DELETE CASCADE,
  CONSTRAINT `hydra_oauth2_authentication_request_login_session_id_fk` FOREIGN KEY (`login_session_id`) REFERENCES `hydra_oauth2_authentication_session` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hydra_oauth2_authentication_request`
--

LOCK TABLES `hydra_oauth2_authentication_request` WRITE;
/*!40000 ALTER TABLE `hydra_oauth2_authentication_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `hydra_oauth2_authentication_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hydra_oauth2_authentication_request_handled`
--

DROP TABLE IF EXISTS `hydra_oauth2_authentication_request_handled`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hydra_oauth2_authentication_request_handled` (
  `challenge` varchar(40) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `remember` tinyint(1) NOT NULL,
  `remember_for` int(11) NOT NULL,
  `error` text NOT NULL,
  `acr` text NOT NULL,
  `requested_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `authenticated_at` timestamp NULL DEFAULT NULL,
  `was_used` tinyint(1) NOT NULL,
  `forced_subject_identifier` varchar(255) DEFAULT '',
  `context` text NOT NULL,
  PRIMARY KEY (`challenge`),
  CONSTRAINT `hydra_oauth2_authentication_request_handled_challenge_fk` FOREIGN KEY (`challenge`) REFERENCES `hydra_oauth2_authentication_request` (`challenge`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hydra_oauth2_authentication_request_handled`
--

LOCK TABLES `hydra_oauth2_authentication_request_handled` WRITE;
/*!40000 ALTER TABLE `hydra_oauth2_authentication_request_handled` DISABLE KEYS */;
/*!40000 ALTER TABLE `hydra_oauth2_authentication_request_handled` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hydra_oauth2_authentication_session`
--

DROP TABLE IF EXISTS `hydra_oauth2_authentication_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hydra_oauth2_authentication_session` (
  `id` varchar(40) NOT NULL,
  `authenticated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `subject` varchar(255) NOT NULL,
  `remember` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `hydra_oauth2_authentication_session_sub_idx` (`subject`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hydra_oauth2_authentication_session`
--

LOCK TABLES `hydra_oauth2_authentication_session` WRITE;
/*!40000 ALTER TABLE `hydra_oauth2_authentication_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `hydra_oauth2_authentication_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hydra_oauth2_code`
--

DROP TABLE IF EXISTS `hydra_oauth2_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hydra_oauth2_code` (
  `signature` varchar(255) NOT NULL,
  `request_id` varchar(40) NOT NULL DEFAULT '',
  `requested_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `client_id` varchar(255) NOT NULL DEFAULT '',
  `scope` text NOT NULL,
  `granted_scope` text NOT NULL,
  `form_data` text NOT NULL,
  `session_data` text NOT NULL,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `requested_audience` text NOT NULL,
  `granted_audience` text NOT NULL,
  `challenge_id` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`signature`),
  KEY `hydra_oauth2_code_client_id_idx` (`client_id`),
  KEY `hydra_oauth2_code_challenge_id_idx` (`challenge_id`),
  CONSTRAINT `hydra_oauth2_code_challenge_id_fk` FOREIGN KEY (`challenge_id`) REFERENCES `hydra_oauth2_consent_request_handled` (`challenge`) ON DELETE CASCADE,
  CONSTRAINT `hydra_oauth2_code_client_id_fk` FOREIGN KEY (`client_id`) REFERENCES `hydra_client` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hydra_oauth2_code`
--

LOCK TABLES `hydra_oauth2_code` WRITE;
/*!40000 ALTER TABLE `hydra_oauth2_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `hydra_oauth2_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hydra_oauth2_consent_request`
--

DROP TABLE IF EXISTS `hydra_oauth2_consent_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hydra_oauth2_consent_request` (
  `challenge` varchar(40) NOT NULL,
  `verifier` varchar(40) NOT NULL,
  `client_id` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `request_url` text NOT NULL,
  `skip` tinyint(1) NOT NULL,
  `requested_scope` text NOT NULL,
  `csrf` varchar(40) NOT NULL,
  `authenticated_at` timestamp NULL DEFAULT NULL,
  `requested_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `oidc_context` text NOT NULL,
  `forced_subject_identifier` varchar(255) DEFAULT '',
  `login_session_id` varchar(40),
  `login_challenge` varchar(40),
  `requested_at_audience` text NOT NULL,
  `acr` text NOT NULL,
  `context` text NOT NULL,
  PRIMARY KEY (`challenge`),
  UNIQUE KEY `hydra_oauth2_consent_request_veri_idx` (`verifier`),
  KEY `hydra_oauth2_consent_request_cid_idx` (`client_id`),
  KEY `hydra_oauth2_consent_request_sub_idx` (`subject`),
  KEY `hydra_oauth2_consent_request_login_session_id_idx` (`login_session_id`),
  KEY `hydra_oauth2_consent_request_login_challenge_idx` (`login_challenge`),
  KEY `hydra_oauth2_consent_request_client_id_subject_idx` (`client_id`,`subject`),
  CONSTRAINT `hydra_oauth2_consent_request_client_id_fk` FOREIGN KEY (`client_id`) REFERENCES `hydra_client` (`id`) ON DELETE CASCADE,
  CONSTRAINT `hydra_oauth2_consent_request_login_challenge_fk` FOREIGN KEY (`login_challenge`) REFERENCES `hydra_oauth2_authentication_request` (`challenge`) ON DELETE SET NULL,
  CONSTRAINT `hydra_oauth2_consent_request_login_session_id_fk` FOREIGN KEY (`login_session_id`) REFERENCES `hydra_oauth2_authentication_session` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hydra_oauth2_consent_request`
--

LOCK TABLES `hydra_oauth2_consent_request` WRITE;
/*!40000 ALTER TABLE `hydra_oauth2_consent_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `hydra_oauth2_consent_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hydra_oauth2_consent_request_handled`
--

DROP TABLE IF EXISTS `hydra_oauth2_consent_request_handled`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hydra_oauth2_consent_request_handled` (
  `challenge` varchar(40) NOT NULL,
  `granted_scope` text NOT NULL,
  `remember` tinyint(1) NOT NULL,
  `remember_for` int(11) NOT NULL,
  `error` text NOT NULL,
  `requested_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `session_access_token` text NOT NULL,
  `session_id_token` text NOT NULL,
  `authenticated_at` timestamp NULL DEFAULT NULL,
  `was_used` tinyint(1) NOT NULL,
  `granted_at_audience` text NOT NULL,
  `handled_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`challenge`),
  CONSTRAINT `hydra_oauth2_consent_request_handled_challenge_fk` FOREIGN KEY (`challenge`) REFERENCES `hydra_oauth2_consent_request` (`challenge`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hydra_oauth2_consent_request_handled`
--

LOCK TABLES `hydra_oauth2_consent_request_handled` WRITE;
/*!40000 ALTER TABLE `hydra_oauth2_consent_request_handled` DISABLE KEYS */;
/*!40000 ALTER TABLE `hydra_oauth2_consent_request_handled` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hydra_oauth2_jti_blacklist`
--

DROP TABLE IF EXISTS `hydra_oauth2_jti_blacklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hydra_oauth2_jti_blacklist` (
  `signature` varchar(64) NOT NULL,
  `expires_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`signature`),
  KEY `hydra_oauth2_jti_blacklist_expiry` (`expires_at`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hydra_oauth2_jti_blacklist`
--

LOCK TABLES `hydra_oauth2_jti_blacklist` WRITE;
/*!40000 ALTER TABLE `hydra_oauth2_jti_blacklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `hydra_oauth2_jti_blacklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hydra_oauth2_logout_request`
--

DROP TABLE IF EXISTS `hydra_oauth2_logout_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hydra_oauth2_logout_request` (
  `challenge` varchar(36) NOT NULL,
  `verifier` varchar(36) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `sid` varchar(36) NOT NULL,
  `client_id` varchar(255) DEFAULT NULL,
  `request_url` text NOT NULL,
  `redir_url` text NOT NULL,
  `was_used` tinyint(1) NOT NULL DEFAULT '0',
  `accepted` tinyint(1) NOT NULL DEFAULT '0',
  `rejected` tinyint(1) NOT NULL DEFAULT '0',
  `rp_initiated` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`challenge`),
  UNIQUE KEY `hydra_oauth2_logout_request_veri_idx` (`verifier`),
  KEY `hydra_oauth2_logout_request_client_id_idx` (`client_id`),
  CONSTRAINT `hydra_oauth2_logout_request_client_id_fk` FOREIGN KEY (`client_id`) REFERENCES `hydra_client` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hydra_oauth2_logout_request`
--

LOCK TABLES `hydra_oauth2_logout_request` WRITE;
/*!40000 ALTER TABLE `hydra_oauth2_logout_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `hydra_oauth2_logout_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hydra_oauth2_obfuscated_authentication_session`
--

DROP TABLE IF EXISTS `hydra_oauth2_obfuscated_authentication_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hydra_oauth2_obfuscated_authentication_session` (
  `subject` varchar(255) NOT NULL,
  `client_id` varchar(255) NOT NULL,
  `subject_obfuscated` varchar(255) NOT NULL,
  PRIMARY KEY (`subject`,`client_id`),
  UNIQUE KEY `hydra_oauth2_obfuscated_authentication_session_so_idx` (`client_id`,`subject_obfuscated`),
  CONSTRAINT `hydra_oauth2_obfuscated_authentication_session_client_id_fk` FOREIGN KEY (`client_id`) REFERENCES `hydra_client` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hydra_oauth2_obfuscated_authentication_session`
--

LOCK TABLES `hydra_oauth2_obfuscated_authentication_session` WRITE;
/*!40000 ALTER TABLE `hydra_oauth2_obfuscated_authentication_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `hydra_oauth2_obfuscated_authentication_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hydra_oauth2_oidc`
--

DROP TABLE IF EXISTS `hydra_oauth2_oidc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hydra_oauth2_oidc` (
  `signature` varchar(255) NOT NULL,
  `request_id` varchar(40) NOT NULL DEFAULT '',
  `requested_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `client_id` varchar(255) NOT NULL DEFAULT '',
  `scope` text NOT NULL,
  `granted_scope` text NOT NULL,
  `form_data` text NOT NULL,
  `session_data` text NOT NULL,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `requested_audience` text NOT NULL,
  `granted_audience` text NOT NULL,
  `challenge_id` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`signature`),
  KEY `hydra_oauth2_oidc_client_id_idx` (`client_id`),
  KEY `hydra_oauth2_oidc_challenge_id_idx` (`challenge_id`),
  CONSTRAINT `hydra_oauth2_oidc_challenge_id_fk` FOREIGN KEY (`challenge_id`) REFERENCES `hydra_oauth2_consent_request_handled` (`challenge`) ON DELETE CASCADE,
  CONSTRAINT `hydra_oauth2_oidc_client_id_fk` FOREIGN KEY (`client_id`) REFERENCES `hydra_client` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hydra_oauth2_oidc`
--

LOCK TABLES `hydra_oauth2_oidc` WRITE;
/*!40000 ALTER TABLE `hydra_oauth2_oidc` DISABLE KEYS */;
/*!40000 ALTER TABLE `hydra_oauth2_oidc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hydra_oauth2_pkce`
--

DROP TABLE IF EXISTS `hydra_oauth2_pkce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hydra_oauth2_pkce` (
  `signature` varchar(255) NOT NULL,
  `request_id` varchar(40) NOT NULL DEFAULT '',
  `requested_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `client_id` varchar(255) NOT NULL DEFAULT '',
  `scope` text NOT NULL,
  `granted_scope` text NOT NULL,
  `form_data` text NOT NULL,
  `session_data` text NOT NULL,
  `subject` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `requested_audience` text NOT NULL,
  `granted_audience` text NOT NULL,
  `challenge_id` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`signature`),
  KEY `hydra_oauth2_pkce_client_id_idx` (`client_id`),
  KEY `hydra_oauth2_pkce_challenge_id_idx` (`challenge_id`),
  CONSTRAINT `hydra_oauth2_pkce_challenge_id_fk` FOREIGN KEY (`challenge_id`) REFERENCES `hydra_oauth2_consent_request_handled` (`challenge`) ON DELETE CASCADE,
  CONSTRAINT `hydra_oauth2_pkce_client_id_fk` FOREIGN KEY (`client_id`) REFERENCES `hydra_client` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hydra_oauth2_pkce`
--

LOCK TABLES `hydra_oauth2_pkce` WRITE;
/*!40000 ALTER TABLE `hydra_oauth2_pkce` DISABLE KEYS */;
/*!40000 ALTER TABLE `hydra_oauth2_pkce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hydra_oauth2_refresh`
--

DROP TABLE IF EXISTS `hydra_oauth2_refresh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hydra_oauth2_refresh` (
  `signature` varchar(255) NOT NULL,
  `request_id` varchar(40) NOT NULL DEFAULT '',
  `requested_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `client_id` varchar(255) NOT NULL DEFAULT '',
  `scope` text NOT NULL,
  `granted_scope` text NOT NULL,
  `form_data` text NOT NULL,
  `session_data` text NOT NULL,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `requested_audience` text NOT NULL,
  `granted_audience` text NOT NULL,
  `challenge_id` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`signature`),
  KEY `hydra_oauth2_refresh_client_id_idx` (`client_id`),
  KEY `hydra_oauth2_refresh_challenge_id_idx` (`challenge_id`),
  KEY `hydra_oauth2_refresh_client_id_subject_idx` (`client_id`,`subject`),
  KEY `hydra_oauth2_refresh_request_id_idx` (`request_id`),
  CONSTRAINT `hydra_oauth2_refresh_challenge_id_fk` FOREIGN KEY (`challenge_id`) REFERENCES `hydra_oauth2_consent_request_handled` (`challenge`) ON DELETE CASCADE,
  CONSTRAINT `hydra_oauth2_refresh_client_id_fk` FOREIGN KEY (`client_id`) REFERENCES `hydra_client` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hydra_oauth2_refresh`
--

LOCK TABLES `hydra_oauth2_refresh` WRITE;
/*!40000 ALTER TABLE `hydra_oauth2_refresh` DISABLE KEYS */;
/*!40000 ALTER TABLE `hydra_oauth2_refresh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migration`
--

DROP TABLE IF EXISTS `schema_migration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migration` (
  `version` varchar(48) NOT NULL,
  `version_self` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `schema_migration_version_idx` (`version`),
  KEY `schema_migration_version_self_idx` (`version_self`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migration`
--

LOCK TABLES `schema_migration` WRITE;
/*!40000 ALTER TABLE `schema_migration` DISABLE KEYS */;
INSERT INTO `schema_migration` VALUES ('20190100000001000000',0),('20190100000002000000',0),('20190100000003000000',0),('20190100000004000000',0),('20190100000005000000',0),('20190100000006000000',0),('20190100000007000000',0),('20190100000008000000',0),('20190100000009000000',0),('20190100000010000000',0),('20190100000011000000',0),('20190100000012000000',0),('20190100000013000000',0),('20190100000014000000',0),('20190200000001000000',0),('20190200000002000000',0),('20190200000003000000',0),('20190200000004000000',0),('20190300000001000000',0),('20190300000002000000',0),('20190300000003000000',0),('20190300000004000000',0),('20190300000005000000',0),('20190300000006000000',0),('20190300000007000000',0),('20190300000008000000',0),('20190300000009000000',0),('20190300000010000000',0),('20190300000011000000',0),('20190300000012000000',0),('20190300000013000000',0),('20190300000014000000',0),('20190400000001000000',0),('20190400000002000000',0),('20190400000003000000',0),('20190400000004000000',0),('20190400000005000000',0),('20190400000006000000',0),('20190400000007000000',0),('20190400000008000000',0),('20190400000009000000',0),('20190400000010000000',0),('20190400000011000000',0),('20200521071434000000',0),('20200527215731000000',0),('20200527215732000000',0),('20200819163013000000',0),('20200913192340000000',0);
/*!40000 ALTER TABLE `schema_migration` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-19  4:04:30
