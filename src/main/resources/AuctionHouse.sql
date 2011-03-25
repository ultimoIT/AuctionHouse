-- phpMyAdmin SQL Dump
-- version 3.2.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 25, 2011 at 01:54 PM
-- Server version: 5.1.44
-- PHP Version: 5.3.2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `CS300`
--

-- --------------------------------------------------------

--
-- Table structure for table `Auction`
--

CREATE TABLE `Auction` (
  `idAuction` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) NOT NULL,
  `CategoryId` int(11) NOT NULL,
  `Title` varchar(90) CHARACTER SET utf8 NOT NULL,
  `Description` text CHARACTER SET utf8 NOT NULL,
  `Picture` blob NOT NULL,
  PRIMARY KEY (`idAuction`),
  KEY `AuctionUserId` (`UserId`),
  KEY `CategoryId` (`CategoryId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Dumping data for table `Auction`
--

INSERT INTO `Auction` VALUES(1, 2, 35, 'Fake Auction', 'You''ve been had!', 0x4749463839616e002d00d50000b2002699cc00000099cce57fff00005f5fbfe5bf00999900666666bfbfe5ff3333ff8080ffe57f0000002f2faccc6600acc623ffccccffd940dfe684ffbfbf550063999999c97309d7d7f1c0c0c0b3d940ff5f5ffff2bfe6a308ff10109507448080cc3e296bffd21fd9ec9fff8f8f10109fb3a600f2f9df88563cffffffafafdf9900334040b3ffec9f6f6fc5ffcc00fff9df9f9fd9ffdf60bfdf5f683a5dff707082677ba6d220e29200190089e5f2bfffa0a075004fff2020ff4040ffffff21f9040107003f002c000000006e002d000006ffc09f70482c1a8fc8a452a90b389fd0c069398c4667bf0c2284c850bfe0f057638562a993f2f3a4b5587e5db17c1e6eaa9ddfdb7d00ff85fc7d74622c028586020961301c1c0c0c2d1c6477234b237701427f21215e7f8261848785894b1c32222fa9aa2f0607261065374b7a6a7c7d9a819f5fa1a2a44932abc1a92607c5b0519448766a435a4371babba2a34ac0c2c1adc507c74f1a49926513445a5c5ed1d2d3be462dd7d7c4dadc4e5346cb56b2e7babc87ea45a8c20c4260484895ad98892b47c05949864f903e43fc8670b826a1df306d07ac183971e75e4387d310216127ac4511060431d27a626bc88c491f3f3da47604a5300e2755bddba6710847ff35de62824c876411a3a33873a634b6d0e51d1d4287f6d265f322cf281eef048d0683c282051b7c881d4bd6c7d71d118acc14290443021509301ce1d0c291dd81aab2c57b0275c0d34f1148f82040b8b0e1c3880928a841e1c7da442a1c882a0142480bbced5611dbebc4db9d33737628484cbab4e11e1f72a42b10b2900dcc9957b5e2ecc4af9a7962228c36cdbb3480153c44b16e1de2018ed8ee685f021d268287de043c98fd0ab607efdf2b56b49e76e1c183cc22fcc9567e073718e7d017c03842617762ecc08583d087c2bbf1550cd60ba9ba4ae1a5da730cd61b094ac0f0dc7bd965a71a4d3f80604877f6a9621211fca992c67f50cc1101743d5051ff0369f065578803454826807ddea522821115a6c2c14affb514c687bdf9400505202628a2009511e1820039a0f880012f54a454301c5882212601a677638e3aaaa642110ed22024914652780d4e30aa21ce1c07f2d6435964fae0de6121ae50015b43a8208095281e97e510b0a98293921d0902dd9ebee9a8269b422400a490721ad14e525d22a3279f8c1a96e69afc087a629ca91441d24d42d8c6cca28d36fa28a03f480aa177c7bd2083449925a569199fecb90105b0c62aebacb4d250c1adb7aa166921f5d9576a2a12f823de2a13aeda131dd6f556834c21ed3aa8afed5c8a5fa6977c22206f364ab54f11920ad0eb7dc29c3a6c2a00fd606c149f2cc0f72115d7a2e92783811ed2ebafaa945be70be59e9ba1201b42d7981261baab23bca18a12c2051da822820cfafd50975d8e145badb5d029a004097d26181ca83184d4a31cfa3ea10b7a35364c0409010bbca300315019d29473848c872e3bf039dd571b249bb176867c2cc47053c53cb12e14a4dc698e1b1bc2428921c925f41d0d2d60f4d185a1b6a028446010520982c8cc64433b6c30359f3d30e6586b05b465a2705d0f1d53043b80255669634ef7ef106b1952c2762dd3e175541fcde4c0dedb0940a22027e8a0f8e28c03ded04c2cb859b8d38e579ecf344bc740f864305bee391d318020fae87d63e0022f2cf8fcf9eaacb74e4510003b);
INSERT INTO `Auction` VALUES(2, 2, 35, 'Another Face Auction', 'What the hell is wrong with you?!', 0xffd8ffe000104a46494600010100000100010000ffed001c50686f746f73686f7020332e30003842494d0404000000000000ffe100344578696600004d4d002a00000008000201120003000000010001000087690004000000010000002600000000000000000000ffdb00430001010101010101010101010101020203020202020204030302030504050505040404050607060505070604040609060708080808080506090a09080a07080808ffdb00430101010102020204020204080504050808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808ffc00011080080008003012200021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffda000c03010002110311003f00fefe28a28a0028a28a0028a28a002b9b8fc63e149bc432f84a2f11e8b2789d23f39ec16e54cea9c7cc5339c723f3ae908c822bf1bbc413ebbe00f8dff11fe12f8a656d4a38af4f8afc3d7b185b7b936b74ed974b88c6f59e393747bce4b204560cbf2d34ae26ec7dd5f1ff00e22f893c31e2af02f85f44d5b55d174fbcb3bdd42fa6b0108b9658a4811515a68e45504ce727693c0c574df0d3e2f5a5c7c39d7759f1deaf696faaf879e6b7d5ee186c132228923b80b81c4b13c52000757c76afc0dfda8bfe0a7ff057e0f6ab25df88fc6fadfc62f1958452694d7b3dfda69ba658aef467b759954acd3ee8937981676ca91b62e52bf3ef4fff0082eafc15d53c4704fad7c37f84fa94aaf108ee64d52f56e13cb6dd19f3e6d31636d84e57790a0f702bae181a925748e7962a09d9b3faaff07fed0be2dd4fe21f833c35af69ba75adbebf733411e9c2d592e7490b14b329966decb23048d03a6d5d8ee5416da4d7d915fcf1fecc9fb68fc2ef8e7e32f05f8efe1d6b969178fb4b4b9be87c37adcb0c635986488a4ad6b7d13bc3215ce43a330193e60881dc3ee4f89ffb5e78b7c376d6fae5c6ab6ba1cf25d4367a5e85a359aea326a37923623b79257da652e70a442a02025bcc70b83cf3a4e2ecd1a42a26ae7e9c5159fa4dd5d5ee97a6de5eda369f792c11c92c0c4130b9504a923d0922b42b3350a28a2800a28a2800a28a2800a67991eedbe626ef4cf35e05fb4cfc42d4fe19fc25f10789747711ea6abe5c0de8edc0fd48af8cef2e759d234ad7bc43e15f889f127c53e3bb1437f1c1a85e5afd9ee96260f2c11c3146a72d1ab85258fcdb68b09b39ff00da43f69fd7be127c7cd43c21e3fd43e257c3ad0afde25f0ceb29711dae8b7ca6341e40b8292a0b93279876caa99054293cd7e467fc152ff6c7bbf82bf09b5b687c47e21baf12ebd03de6aba85d5fc6d7b25927eea2b58e58638844923b32028a0ac62e5b966dd5fb37f1c7f688f847fb407ecffe20f04e9fa1e8de3b8b59d364b19af353445d32c2720066dee0b4ce84e76c2ae4118257ad7f1fff00f0592f00fc4af8cdf13be13fc02f825e1f9fc53e38f145f68ba1787748b601164c99c007b470a0695dd8fca88acc7016bd1c0c137cd25b2b9c78a93f853dcf9aff00670fd996dff68af0c41f1cfe2f5f6bbe2bd7b526bc5d374db1b6692df45b5b6b4bdbaf2a3b6482752fe5e957c161611461922532869b70f35d3ec7e1e6b5f1613e106bd2786a4d0935c9f46b8d42d34b82e97ca8a47579a084b22b92b19655dea09206e1d6bdd3f6c9ff0082707fc143ff00e097bf04bc59f17fc11f1ffe097c73f80ba3bc77dad4764b6f1ea5a1dc48d1c2f2c7a76a1149bd77b46ac6de462ca159e31838fc22f827fb60fc7ad17e246a175f062db59d53e2878974ed4fc3ee2db4eb7d4af2ee0be85e3bb1024b13f952b46d2fefe30af1a962ae8326b8aad594e5cd2dceaa708c55a27ea4eade34f0a7ecabe36f843f127e02f887e2b5b7c25f11c09aadd58eb91c56b79a7dca5f5c5b25f5888649563e6dc146dee724a33323617fb12fd8c7e2e7863e2bcff07bf68ff1469571e37d73438aef4bbed3edeee08adedeede3429a95b4333a29665dad8dc484b95da3e439fe27ff00641f84bf163fe0a05fb69fc12fd93bf6b8f1b7c6ef08682de099d34ed484d15edc59f8774bb691ad2df4b964325b9b5592331029b915bcc1f781afeaf3c19fb3df887f63ad6fc47fb3e7c21f1db5ef8675cb6d06e7c0babf8cf170e0974b0bb8eebece215792173138da146c92207bd7646b2a94f967bad9f91cb2a6e13bc7667f4cdf0f3e3cf847e22eb4be1db2d3f5fd135a7b796ea286fa38c09e38ca0728f1bba9da658f2339f9857b757e427c2ef82daafecb1e3586e2f3e346bff19fe33de69d25d6a97fac1f2744f0e5931000b7b0b7184695c246a3e6760a5892236afd0df81ff16dbe2c68fe229ae6d74e8353d27503a6ddbd9492496d348115f744d22236dc3af55041c8ed5c0fc8ec4fb9edd4514521854734ab0c524cff007154b1fa0a9299222cb1bc6e32ac083f4a00f827c4df1d3e2078f7c4badd97c3cd4f43f0478474a964b39356d450cbf6ebe190b0c50ab2b6c0d8df21385190039c81e89f0b3f68d7bad52dbe1ffc5cd3a3f0678fbcbdf09326fb4d5101c79b6b3fdd91338cf465c80c14f15f979fb4678566fd9abf6a78bc541560f87fe2b62b74ce0ec8a538dc491c7015241ff5ce4fef57bd3de699ace96de1af15e9b6de20f0cb3798837c8b3d93e3026b59800d1483b1523d3a139d146e8cdcecf53e8dfdbabc59a12fc37f0ef8746ad64d7da86bfa6db242b202f207ba897007beeaf19d33535b2bb875281ee639639049c1232739e735f357c47f8adfb32fecb9a369de2af895e2dd3ef75a2ecba76ade3399b52d5af2503fd5e9d631212641c0cc116eeec7bd7c11e27ff82a25e5c3dd9f859fb32f8af5bd3724aea7e2ed660d021939fbc2d912e6e003d70e919f615bd1c3ce5f0ab9955ad15bb3dbfc4dfb0d7c43d3be28fc50d4be16fc40fda1bc1ff0e356bd6d774783c3ba4586a3a75bb5c0f3258424d0b48acb29906dcfddda475aea3f62ff00d9c3c6fe0fd5352fda47f68ed1efe5f8f4d0de785fc2c9a85a2db5de97a324ccaf7d2dbed5f26e6eb6e76800ac440ff968c2be1bb1ff0082a57c7d4be5487e0efecf77d183c5a597c44be49c7b026c48cffc06bdd7c31ff0549f065eddc10fc76f849f12be10b11b5b5889c788b4c887ac935a8fb4c69fed35b803b915bbc2568ad53b192af4dbd1ea791ffc17afe2de8ff083f617d5fc49aceb5e32d02ce6f15f86edda7d2111ef24dba9c574c91f9ac13e65b2704b6e18ce51c12a7c8b59ff0082427fc13d3f6cafd9a3c19f10ff0064dd1ac3f656f1a6b7f0feef42d3fc51a029b9b4d6ed6fa0cbff006b41850f2b1909371088dbcb95e22a632a89f7d7ed51fb29fc16ff00829c7ece367e15d1fe2ef86869336a36dad685ab410c7ab689a94f0c72aac375b4860a7cf6c946578c8070482a7e7ffd83ff0065dfdb1bf663f83baafecd9a4f80746f0edde93a8dc98758d66f4a786349b5772d0a584e0bcf78b872c762fcb91190852b99c15aed9b29bbd8f997fe09e9ff0004e4f8cffb20fc71ff0086a2fdab7c5ff00fe12691a3c3e2b68748b29a0b7377a8eae74f8a7bb548259acb4eb0f2f4a59522fb43c8f25ccac6380158d7f4cbe2bfed4bfb0e7c478fc39a778a3f686b7b4bcd1afa4bcb2d4bc2eef398fcc8cc734124c2d2e2092091761643c131a1cf1595e21fd82ff671d47c37e31f167ed7bf16bc75f1f3c7973a75c432789aea46d3749f046f5c09f43d290b471491b152b2cde7c8e40c93b8a9fe4b7c59e06f8b9e1ef88bf113c136dfb64f893c7761a16ad369f63ade933de456ba940a7e49044278846fb480f1ec1b1c3af38c9d68c69af8dd88a8e6dfbaae7f6cbf02be25fc14d6bc2771e1ef833f19a2f8ca1676bebfbdbad762bfd51d8e422ce88a1a38a24c471a1450a327ab313f65fecc7f147c07f08f40f1c787be25ea8be08f135d6b577ab4515f0d8ba8dab3848a5b671f2cc0a841f264863b4e1b22bfcf0ecbe2cfed11f09755b3f10eb3ab41f19347d3cfda3edd0bc90eb1a4a2f26686f2202eadca804efdd2a8fe20064d7f4b5ff04f5ff82920f8d5a3f85fc19e2ff12c7ad6a52bb47e1df105cdb4297a978132f65798f961bd29ca5c42556e107f7b064ba9844e3cf4ddd22615da95a6accfe92ae3f6a2860bfb7bd9bc07af69be0732c71cba85ebac3729139005c7d8cfef56005941770a406dd82a1987d5b14b1cf147344c1e2750ca47707a1afc2ff85bf0c7c45fb527ed14742f13d9ea1a3fc20f044b6fa9dec7708c92788efdc6f89b93f35ba8e41e431cfa903f74218a38228a08942448a1540ec0702b824ac75c5b38cf1d7c41f0cfc3ad29758f13df2d9dab388d0632d231380aa3a92490001d4d786db7ed9bfb3f4b2882efc7161a54f9c6cba611303f46c1af977fe0a31f10fc55f0993c11f132d3c03e29f885e1ad11e5bb92cb4a650eb71e5958e57c9fb8858c9c06219178c648f97be147ed7ba6fc76f0e1d67c21e2fb1d7c42a3ed9a6df5ac46ef4f63fc3342fd0760c32a7b134e10b8a53b1ef5fb58f8a7e1b7ed5ba8f877e1978375fb5b9b3d3248b5ad6b5ab50b21d32d11f854ce4196520c6a0f62edc84615f9dbfb52fed5707ecf5a568df0c7e1788bc57f186f2cc7f66c7a9c6248743b05f906a1a895219865488e118699d4f2155987d49f147e2d69bf0ffe1d78d7c77ae68de18d3744d36cdf52bf1a7e9b0db4ba8346a7cb8d8c63e77662a8b9eee2bf8d5fdbbff688f12dbaebda76a77f2bfc48f17b1d5fc55736ae4490db39f2e0d36d88395560040a07dd8a363d64cd7a981c1a93bcb6470e27116d16eca3f1ebf6d6d4cf8e7599be1f6b57bf167e305fcad67a978f35987edd2dc4a0f36da5db2e15a343c048f65bc78e8fc9af98ef7e177c6cf8b537f6b7c55f1acefe61dcb16b77925fc91e7fbb670b476b08ff0065738afbeffe09dffb2af84b52f0a3fc52f19f87bc27e31f1a6a57da9697a6dbeb77f7565e1ed06c34ad31754d6754d525b2ff004b3a6e9f6b2d9a8b5b668e5bb9ee90798a10ab7d7bf11fe1cfc1df19fc0ef0a78f7c356ff0721bff00157833c63e3cf046b3e07d135dd01e2b2f0e491adf5aebfa56ab7b78aa2702f1209a0915965b740e6459be49c466727eed3d115470296b3d59f88b2fec91a7887fd1bc5de18338e46ff0bc2173f559030fcea6d32e7f694fd9e8aea5e10f15eaf79e1a83e6922d3e79751b1541d7ced36e09745f5681b23d457a47fc2769ff003dbf5afbe748f88dfb1f7c09f83df023c59f137f66cf895fb457c53f16f876fbc4b289fe221d0341b28e3d6350d3e288436b6cf7321c69dbdbf78012fc11d073d3cc2ac5def7f5369e129be8719fb1afedbfab47e308fc41f0c354d2fe17fc63ba5fb45f687b8c9e1bf1fc483e7dc991fbd033f3802e62ea1a450c2bfa96f811fb49683fb467c3db5f1468971ace99a8da4bf60d6740bd6124fa05f2a82d03f3b594821d251f2c88430c7207f135ff00050bf09780be1e7ed21e31f1bfc17f075a7c24f073dbf8775e9bc3da55e4d347a1bdde8f63786e6d2694994c914b72e59c9cbae4903915fa67fb00fed5f3d8eb7e14f8a9a8cd690c86587c2bf102de01b62bab6623c8d4020207eecc893a9ec8d709d2bd3946188a6ea43492dce15cd4a7cb2d99fa09fb75fed4d3f8afc7fe17fd9bbc03ad5e244baad9bf885acb48bdd4a78acc5c225d5cfd8b4f8a6b8748e3f3563f94234a09dc362e7f9e5fda87c61a1fc3cf8a93783b496b649f4ed2ed61d4274251eeee8ef72d244ffbe89d2378a1db70a970c21124a88f2151fb0fff0005c9ff00826a7c70fdaa7fe14b7ed13fb19fc1cff858ff001974a8e5f0af8bf48d31ada19afb4cc34d697a049222bbc6e6789882599668f82138fe68fc41ff0004ddff0082b778443c7aa7ec0bfb4924099c9b1f09cd7a83e86dcc80fe15e1cd3b9e9c1ab1fbe1a4f8a7f681f80977a77c02f1ff00c7cf027ecebe19f0bfc11d4fc65e33f0b5ef8b2cecbfe12192fc6a66db4f0b6bb9f51d4678af74d22d1d98aa6dc850a2bf1f7f655f8a6de04f8fd69e1dd1efe6d2b41d7d62689617da2c6ec4998658ff00bad15c796ea7b099c7402be3d8bf676fdaa6d6f2f7c35af7853c1fe17f8b102b483e1e6b3af5ae9de30b80b197c45a24f22dcb4cc837c76fb44f2ae1a38dc104f25fb2a789354f1efed03f0ea182092392dee11d8862700cd11cf4e31b73f8575e5b36ab24bae8638c8a74dbec7fa577c06f8d5a87897c0bf0fbe2ae9be21f167853c51a868714178fa4dcda88e5218978a48a68a4ddb2633ec208c07239e31f5bfc05fdade4f137c6ef0f7c243f14ad7e206a972b30d474e9a4b337ba5a88cb24acb6e41084ab29dca304a7ad7e35fc0ef861a47c52f83ffb3b7c35f14fc40f1b7c3bf0b6adacc916a971a3de9b413da4d25cbac334c1728ae760182b92d8cf22bfa3bfd9dff641fd9dff00666d1e2b3f837f0f741d06691419b5154f32eaf0ff007a49db2ee4f5c926b3c546319b8a43c3b6e299f436b9a0691e24d3ee34bd6ac2db50b1914ab472a06047e35fcfe7edf1ff0004f1f0cfc38d5b43f8f1fb3f789b51f847e369757b6b69a4d38011cc26956362f1746fbf923a3630c1abf623e2dfed23e1ef86f7c7c37a5e8dacf8cbc66e9be3d3b4f84c8ea3070d211c46bc1f99885f7afce7f8dde35f157c5e974d8be2bf8a74cf0ae83657915fc3e1dd11c5cdd4d24720745b9b9c79718ca8caa6fc8e8e2b0a706de86b52492d4fcc4fdb9bc4da9dafc18f02f83aeafef2faeb55d72d52fa75884297696d1b4ec7603c0695216dbd074afe2ebf686f1fb789ff00685d4f51ba99de11a95e5ea073ff002cedcfd9adc7d0052df5e6bfb1ff00dbc2d629bc31f0c2fe18c25adbea9731f326e2bbe15db9381d90d7f09dfb4ddfdff833e2dddb490ee93cbbab721988f996e5f3cfe55ef4d38e0db5d7fccf2a96b88573f663f623fdbdfc0df073c3bae7c31f8a37c9a069525c6b171a3eb573a04faee92f6dabe9b1e9bace8dae69d6b716f78fa7de416b6122dcd9cbf68b69acd5963916460bef5fb41fedeff04b56fd9c8fc22d2fe257c10d7b50b2f0837823c3b61f05fe1e7887422fa51d45afd2d358d67c4b2334562b70c279a1b2b77b9be78e359ae11771afe5a25f899adb64442ce11fee927f535447c49f10cb931ea36c40383b63538af9d3d93f4a7c25e34f0eea1e2bf0b5878cfc477be1af07cfa95ac1abea56d6c6ea6d3ec9a5559e78e004195d232ee23046e2a077afd5ef8eff00b49ffc1307c2dfb62fecc1a17c3dd27e367ed4bfb04fc37f098d03584bb90e9daa78b6ea4bdd4f5091e2f352d58dbadc6a50e519602eb1c88081876fe5e47c44f128c7fc4c223f5897fc2beccf823fb20ffc1413f68bf042fc4bf81dfb2c7c63f8abf0fe49a4b6b6d634cd0256b6d4a78ce1e1b373b7ed72a9e0c706f6078233401f5efed71fb50785bf692fda07e2c7c57f0a780e2f85ff000ff5cb882db47f0cfda44ffd91a5dbd9c3656f6ece06198436d1e71c024804819367fe09dde2f925f106b1e0abc9a79ec2fb4ebbd2675073bded9b744c7dfca9255afc9dd6bc61e2bf08ebdac785bc69e18d5bc35e26d3aea4b1d474ebd864b5bbb0b98d8ac90cd04a03c722b020a300411822bf42ff00e09a8973a9fc418f58d87c9fb5ea3704938c29b6dbefddc0af5f2593f6ad77479f9925ecee7f777fb39f8eefbc4df027e167882ea7d5bfb4df46820ba95642864961061762723393131fc6bc57e3effc14d3f67ffd9bb4bd4eefc49f13efb57d4ad37092d74ed4c08a171fc32dcb3792878fba199ffd935e4177e1fd32ebfe09f1a9693ab5cdde9f249e1dd5af2d9e1ba311138373343b98632bbc212a7e538e4115fcc7788ffe0913e37f8d2ba4f8c3c6bf107e3aeb971731acc226d361bb821dc33b612b32c6abcf651552c3ca526a0442b2514e5d4cafdabbfe0a25fb2cfc6afdabfc53fb487867c41ab7f615d6b7e0df195d78523f0b4b73acea3e29d06331db9d2f5a324515b5bce816196e24467547765824645cf4bff04befd903c6fe25f195cfc53f18e851695e2af12ddcb7f15a888a269b6d2c8cef2edfe041e636d1fee8ed5f547ecebff0470f007c30bfb7f146abe1c905e5b0f35b58f16dcc2e6d54725e3b4462a08f591b02bf69be0d7857e0eda783350d2fc03e2c5d6f4ebadf63aa6b7a6df46f721f956db229210af2557a7d7ad6b87a0a8be793bcbcba19d7aeea2e48ab44ed74ff00dadfe0efc3296e7c0f05df896db4ad2e34d26793fe11cbdbbd2ee51140319952378a55e39f43f9d7ecbffc1353f691bef8ef73e34b3f08df5f6bbf0834cb6845ade5c4924891de3336f82dccaa2411a003e490b3296c671803da7f603f097c244fd9bbc31e0dd03c33a13dce8acfa76aab246933cd74a72d33b1c93e6022407b8715f71e87e18f0ef86629a0f0f689a5e890c8db9d2d6158c39f5200e4d7935abb968d1e8d2a496a99f849ff00051d1f1afe0f7c569be287c37f877e3ef8a3a3ea56915a5c695a24ae85ca339dd230c80a04ae412adca81c6735f96979fb6af8df428da7f16fec79fb45688a9cbba587da15477392895fd9b5de9b617e02ded9db5dafa4881bf9d713e25f02fc3e9f47d4db5af0ee842cbc97f35de05002e2a615da562a5493773f92bf1cf89b49fda6bf671bdf1378774bd5f47bb81c5f4561a94222bb81e3072ac8a580ca3b11cfe478afe3dffe0a57f06af6cb50ff008585a55a6eb5699ae25d8a7e4ddc4a0fd186efa66bfb6abcf00af843e2d7c56f12785efb468fe0fdf6a52db595b4b72c925c4ca4977854702257322127a9661fc15f94bfb667ecd7e1ebfb7d71dac21bef026a7b99fcb9b79d3a56fe4327afe7d6bdec1ce3529ba52ea78f88bc2a29c7a1fcf37ec0ff0007ff00621f86be0df825fb6e7fc142352f8a3e2ff845abfc56bdf037873c0fe13d062d4a1d52eb4cb0b3bdbabbd77cc9a277b057d574b8fec56e44f72ad380f1841bfb9f097ed43f007f6bff00863e37f847ff0005196d53c1df13751f887a3e99f0a3c65f0cfe0be87a45c784959a7835282fd6d12cd6e74a884fa731d2f0d731b2ab44f1e5d64f2cd57c59fb6d7fc134afbc5517ece9e37b5b4f855acea516b514777e1ad33c416763a9c2a561d46ca1d46dee12cf508958aadd4012745e371014d70dafff00c16e7fe0a2faf4ba64d2fc65f879a2ded9dfcfadc73e9ff0cfc316d3ff006f4cc1a7d74c834fdebad4ac88d26a2a56e5991097ca8c7835e84a9cb9648f629558cd7344f8cbe277c32b9f823f1fbc7ff037e266a5a7cd73e11f19def84bc4579a6486485bec77cd6b7335bb900b262291d4900e31c66bf697f6d09bf679f147ede3ff000526f849fb5cfc531f027c3de1dd1ecb40fd987546d2f57d4b45f08e8569aa58cba4ae9d69a6e716775a0ac8d1ce54c723dd99c9323f995fceeea1afddeada85feadaaea736a7aadd4f25cdd5cdc4a6496e66762cf248ec49676662c58f24926beeff85fff00052dfdabfc09e07f06fc2ab5bbf82df18741f0fdb8b0f088f885f0bfc3de33bff0a5bee2cb6fa65deab67713dbdbab3332db87f25198954524d62687b9ff00c143f5dd7fc77f0dff00e09bbf11be26cd7baa7ed3de26f83667f195e5e02753d72c61d7b51b4d02ff00512df3bdd4da5dbdaa895fe796de1b59096de19bf443fe09c7f01753d0bc2ba2bc96aa75dd4825a5ba953962ee1a461c74ced19f415f15fecf3fb38fc64fda53e296abfb517ed5be2bf11f8bbc47ab5c8bd9f50d6ae8c977aa4a1422804f4454448d554048d155100c003fa92fd9b3e18787be13f8666f8abe388acb43b2b2b53f60b6371b1ade3030182f5dedc055eb922be8b0147d841d59eecf1b195bda49538ec8fd1af0ee83e13d2bc23a6781fc41e1ef0df8cbc2f1e9aba5dd69f7f1f9905d4262d8e08c71b86ee7dcd7c57e3ffd93fe297c2cbf97e257ec9df143c6df10fe1d5b4e2eafbe156a460b8bbb2b73feb134fb974f36e23504958cb990602867ed4bc3363ff0536f8c2facf8ff00e05fc36f066bbf0ae59b3a643a9c4c8e62c7412060ce3fdb246eea0018aabadddffc14b2d9ee7c11e32fd94a6b29eea0745d47409a60639369280ee9d86c660a1b033b49c7a579f2af16efd4ea54e56d8f64f847e11f83bfb4ff00c48f825e12f8bb6df6df00ddeb2f25e58deb4968aed1dbca4c53aee5c90ca01471d410457e89fed59ff04e0fd9fdd2d7e227ec97f113c0ff00b3f7c4db485216b34993fb1f5c8570045776ea71d071228dc3dfa57e487ecc3ff0489fdaf267ff00848f5bd73c756fac79a6f5a3d5b51710c73bef25e3887caa7f7b20e074635f62f89bfe098dfb61dbc2acbaaff6e2e3ee8bd638fccd7255adcd2e647453a368d99faf3ff04eef82f77f04be1f6a6be35f8d7a6fc59f889acc8971a83d9944b4b2da30b0db22f3b14700b658803b0007e9057e2ffec95fb1cfc7af016910daf89bc4ba9784ee41cef89c498fcf9afd50f873e0af13f8423bb4f10f8d750f171931b0cea0797f4c562db6eecd92b688f50afcc8ff0082897ed0763f0cb42f0e781353f15d9f80f49d72468aef549e5f2cac4065a388f795870bd872c78535fa6f5f28fed6ff00b297817f6aef869a9f813c5f68a6491336f70bc496f27f0ba37f0b03c83445abea124eda1fcebfc52f8cdf0fbc0da7c5ad78b3c45a6f837c3304421b0825203189470b14401791bfdd049efeb5f2469bfb687c30f16eb0346f12f83bc63e1bf875a803059f88f59b1d963a83f752bb4955c1fbe49c770bce3f65bf679ff8214fc1ff000478a17c69f1bbc4bae7c69d72070b6835893cc86da252362242495c280000738ed8e95fa09fb4c7ec89fb3e7893e01f8a3c33acf803401a35a58b1840814796557e5208e411d88e476aec78bb3f751c71c2f73f939f8a9fb22d8f88ec6f2fbe1dcfa2f88fc357a9e649a2ea0a26b6b842320c5210548ee338c76615f8e9f1a7fe0971f0575bd46eae7c49f0fbc7ff000a755724b49696ad716ac7d5776d38ff00b68d5fd0b7c35f0cf877e18f82f44f09f860ea769a6470a4de5b5fc8df3ba866237670093d071d6bccbc7bfb51dcf843c552783bc25f0bfe29fc5bb9b788bea4de1fb8131b06e3e468f6924f233d00e9c9071ec7d6af1b5457479ca834fdc763f999b6ff00824c7c078eed5a6f89fe36ba8377faa4d18ef3edfebf15f787c01ff826c7c34f09cf6f77f0f7e0eebfe28d441046abe2088476d19fef042021fa1327d2bf60fe14fed1fa5fc4af106a7a0df7c38f8a1f0c75db68c4a91ebf1adb35c8ee1001bb20027918c03cf15e9ff143c51e2db6f05eb13780759b2b6f181888b2935195e6851c0279400124e303b648272062886229c5735380e50a8f4933cb7e127eccbe1ef09ddda6bfe35bcff8493c411e3c8823876dada1038d8081b88ec7000ec057d31e20f037843e28698fe0cf154776fa7cd936ae1cc6b05d007cb760bd5413c83c1069be1aff00822f7ed1ff0014fc096df197c7ff00b4478aaefe2d883ed9a38b690c36da6b750b1c6b8e0f00edd991dabe54d43e2efc48fd9cfc5171f0bff6baf0feabe0ff00105b17161e23b72e6cb59541904855e2538fe10327aaae79e278b555fbc747d55c15d1fd667ec51e23f0beb9f027c2b67e1ed36db469ac22fb15e59a28536f347f2321181d0a91f857d68d6d6eec19e0859bd4a826bf0e7fe092ff0015bc5bf16eefc63e34b1f02f8bbc23f0eefc46d1cba994dba8dc282ad71085e4232ac679fe2dd82739afdccaf266acec7a7095d5c40aaa30aa147b0a5a28a92828a28a0063c89129791d6341d493802b1aebc4ba05a46f24fabe9ea14648f3973fceadeaba65b6b1633e9f79e61b7914ab6d6c1c7d6be7cd4bf659f867a819e464d6d66724e7ed8f8cfd3340157c77fb5dfc15f876b2bf88fc426054ea55370af8c7f683ff008286fece7e31f831e3ed07c31e345feddb8b0963b74742373ed381f9e2af7c6bff00826ec7f11ade6b7d0bc50ba546d9da256773fa9af9374fff008229ea12cadfdaff0012edc444f22387a8a00fc2dd4ff6eaf03dc45e20f09e89a5789346f1a5b47f65d346a76e238ae02a85f357e738c00484206ec01eb8fd3afd857e38fecbbfb2cf829f51f1cd9cfe3cf88bac7fa66a57622120576e76027a8193f5249ef5f505effc1083e1b5f4f0df4de33325f21dcae6dc707d45707e32ff00823078f34f9a38bc11e33d3b50b3031fbf5da456f5710e6accc695151d8f89bf6f8fda7fe057c41f881f0dfe24fc27d0ee3c35af4376b6971ba10b1ccae7e556e40e5b0bf476ae135ef8b5e03beb7b3b78fc77e169e58fc9bcbab386fa26b9b7b7de818bc2a4b2e3780411c1afafb5ff00f8228fc6af1369d2697a96bde1f36efdc31054fa83d8d5ef87bff06e3f8234cbbb7f11f8a3e20dcc9e22f30cce7e697e72724ee627249ef574b13cb17126ae1f9a4a47ec2f823f6f4fd973c3fe02f0bdacff001234c2f15946ac8b9241db5e27f14ff688ff00827a7ed1935ae81f10ed343f1805992445bab15954ba9ca9c30ea08af04bcff8228e951db245a5fc4db95655c00f17159de18ff8236ebba1eb705fcdf116cae2d918363cb209ae53a0fd7af83fe33f82f6be1fb1d1be1dc9a6e95a4471858e35558c05038af758356d2ee9825b6a1653bfa24a09fd2be28f87dfb13784fc376305aebb7d797ee8a06e86e1d33fad7d03e13f813e06f065fa6a3a326a8b72bd3ccb9771f913401ecd452018000e94b40051451401ffd9);

-- --------------------------------------------------------

--
-- Table structure for table `Authority`
--

CREATE TABLE `Authority` (
  `idAuthority` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) NOT NULL,
  `Authority` varchar(10) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`idAuthority`),
  KEY `UserId` (`UserId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=4 ;

--
-- Dumping data for table `Authority`
--

INSERT INTO `Authority` VALUES(1, 1, 'ROLE_ADMIN');
INSERT INTO `Authority` VALUES(2, 1, 'ROLE_USER');
INSERT INTO `Authority` VALUES(3, 2, 'ROLE_USER');

-- --------------------------------------------------------

--
-- Table structure for table `Bid`
--

CREATE TABLE `Bid` (
  `idBid` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) NOT NULL,
  `AuctionId` int(11) NOT NULL,
  `Amount` decimal(10,2) NOT NULL,
  `Time` datetime NOT NULL,
  PRIMARY KEY (`idBid`),
  KEY `BidUserId` (`UserId`),
  KEY `BidAuctionId` (`AuctionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- Dumping data for table `Bid`
--


-- --------------------------------------------------------

--
-- Table structure for table `Category`
--

CREATE TABLE `Category` (
  `idCategory` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`idCategory`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=36 ;

--
-- Dumping data for table `Category`
--

INSERT INTO `Category` VALUES(1, 'Antiques');
INSERT INTO `Category` VALUES(2, 'Art');
INSERT INTO `Category` VALUES(3, 'Automotive');
INSERT INTO `Category` VALUES(4, 'Baby');
INSERT INTO `Category` VALUES(5, 'Books');
INSERT INTO `Category` VALUES(6, 'Business & Industrial');
INSERT INTO `Category` VALUES(7, 'Cameras & Photo');
INSERT INTO `Category` VALUES(8, 'Cell Phones & PDAs');
INSERT INTO `Category` VALUES(9, 'Clothing, Shoes & Accessories');
INSERT INTO `Category` VALUES(10, 'Coins & Paper Money');
INSERT INTO `Category` VALUES(11, 'Collectibles');
INSERT INTO `Category` VALUES(12, 'Computers & Networking');
INSERT INTO `Category` VALUES(13, 'Crafts');
INSERT INTO `Category` VALUES(14, 'Dolls & Bears');
INSERT INTO `Category` VALUES(15, 'DVDs & Movies');
INSERT INTO `Category` VALUES(16, 'Electronics');
INSERT INTO `Category` VALUES(17, 'Entertainment Memorabilia');
INSERT INTO `Category` VALUES(18, 'Gift Cards & Coupons');
INSERT INTO `Category` VALUES(19, 'Health & Beauty');
INSERT INTO `Category` VALUES(20, 'Home & Garden');
INSERT INTO `Category` VALUES(21, 'Jewelry & Watches');
INSERT INTO `Category` VALUES(22, 'Music');
INSERT INTO `Category` VALUES(23, 'Musical Instruments');
INSERT INTO `Category` VALUES(24, 'Pet Supplies');
INSERT INTO `Category` VALUES(25, 'Pottery & Glass');
INSERT INTO `Category` VALUES(26, 'Real Estate');
INSERT INTO `Category` VALUES(27, 'Specialty Services');
INSERT INTO `Category` VALUES(28, 'Sporting Goods');
INSERT INTO `Category` VALUES(29, 'Sports Memorabilia');
INSERT INTO `Category` VALUES(30, 'Stamps');
INSERT INTO `Category` VALUES(31, 'Tickets');
INSERT INTO `Category` VALUES(32, 'Toys & Hobbies');
INSERT INTO `Category` VALUES(33, 'Travel');
INSERT INTO `Category` VALUES(34, 'Video Games');
INSERT INTO `Category` VALUES(35, 'Everything Else');

-- --------------------------------------------------------

--
-- Table structure for table `Feedback`
--

CREATE TABLE `Feedback` (
  `idSellerFeedback` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) NOT NULL,
  `AuctionId` int(11) NOT NULL,
  `Feedback` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`idSellerFeedback`),
  KEY `FeedbackUserId` (`UserId`),
  KEY `FeedbackAuctionId` (`AuctionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- Dumping data for table `Feedback`
--


-- --------------------------------------------------------

--
-- Table structure for table `Image`
--

CREATE TABLE `Image` (
  `idImage` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(4) COLLATE utf8_bin NOT NULL,
  `image` blob NOT NULL,
  `description` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`idImage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- Dumping data for table `Image`
--


-- --------------------------------------------------------

--
-- Table structure for table `PersonalInfo`
--

CREATE TABLE `PersonalInfo` (
  `idUser` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(90) CHARACTER SET utf8 NOT NULL,
  `MiddleName` varchar(90) CHARACTER SET utf8 DEFAULT NULL,
  `LastName` varchar(90) CHARACTER SET utf8 NOT NULL,
  `Address1` varchar(90) CHARACTER SET utf8 NOT NULL,
  `Address2` varchar(90) CHARACTER SET utf8 DEFAULT NULL,
  `City` varchar(90) CHARACTER SET utf8 NOT NULL,
  `State` varchar(45) CHARACTER SET utf8 NOT NULL,
  `Country` varchar(90) CHARACTER SET utf8 NOT NULL,
  `Zipcode` varchar(10) CHARACTER SET utf8 NOT NULL,
  `PhoneNumber` varchar(16) CHARACTER SET utf8 NOT NULL,
  `EmailAddress` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`idUser`),
  KEY `PersonalInfoIdUser` (`idUser`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Dumping data for table `PersonalInfo`
--

INSERT INTO `PersonalInfo` VALUES(1, 'admin', NULL, 'admin', 'nowhere', NULL, 'nowhere', 'nowhere', 'nowhere', 'nowhere', 'none', 'none');
INSERT INTO `PersonalInfo` VALUES(2, 'Daniel', 'Matthew', 'Hamlin', '620 Tanager Path', NULL, 'Mankato', 'MN', 'USA', '56001-8931', '5073829458', 'danhamlin@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `idUser` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(45) CHARACTER SET utf8 NOT NULL,
  `Password` varchar(255) CHARACTER SET utf8 NOT NULL,
  `Enabled` bit(1) NOT NULL,
  PRIMARY KEY (`idUser`),
  UNIQUE KEY `Username` (`Username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Dumping data for table `User`
--

INSERT INTO `User` VALUES(1, 'admin', 'secret', '');
INSERT INTO `User` VALUES(2, 'Dan', 'tulsfe', '');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Auction`
--
ALTER TABLE `Auction`
  ADD CONSTRAINT `AuctionUserId` FOREIGN KEY (`UserId`) REFERENCES `User` (`idUser`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `Auction_ibfk_1` FOREIGN KEY (`CategoryId`) REFERENCES `Category` (`idCategory`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Authority`
--
ALTER TABLE `Authority`
  ADD CONSTRAINT `Authority_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `User` (`idUser`);

--
-- Constraints for table `Bid`
--
ALTER TABLE `Bid`
  ADD CONSTRAINT `BidAuctionId` FOREIGN KEY (`AuctionId`) REFERENCES `Auction` (`idAuction`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `BidUserId` FOREIGN KEY (`UserId`) REFERENCES `User` (`idUser`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Feedback`
--
ALTER TABLE `Feedback`
  ADD CONSTRAINT `FeedbackAuctionId` FOREIGN KEY (`AuctionId`) REFERENCES `Auction` (`idAuction`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FeedbackUserId` FOREIGN KEY (`UserId`) REFERENCES `User` (`idUser`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `PersonalInfo`
--
ALTER TABLE `PersonalInfo`
  ADD CONSTRAINT `PersonalInfoIdUser` FOREIGN KEY (`idUser`) REFERENCES `User` (`idUser`) ON DELETE NO ACTION ON UPDATE NO ACTION;