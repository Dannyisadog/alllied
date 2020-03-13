-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- 主機: localhost
-- 產生時間： 2020 年 03 月 13 日 02:28
-- 伺服器版本: 5.5.64-MariaDB
-- PHP 版本： 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `allied`
--

-- --------------------------------------------------------

--
-- 資料表結構 `fortune`
--

CREATE TABLE IF NOT EXISTS `fortune` (
  `id` int(10) unsigned NOT NULL,
  `constellation` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `constellation_id` int(11) NOT NULL,
  `total_fortune_score` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_fortune_desc` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `love_fortune_score` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `love_fortune_desc` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_fortune_score` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_fortune_desc` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `money_fortune_score` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `money_fortune_desc` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表的匯出資料 `fortune`
--

INSERT INTO `fortune` (`id`, `constellation`, `constellation_id`, `total_fortune_score`, `total_fortune_desc`, `love_fortune_score`, `love_fortune_desc`, `work_fortune_score`, `work_fortune_desc`, `money_fortune_score`, `money_fortune_desc`, `created_at`, `updated_at`) VALUES
(1, '牡羊座', 0, '★★☆☆☆', '有血拼的慾望，也容易被賣家口若懸河的吹捧弄得暈頭轉向，而讓自己花費不少；工作則有些剛愎自用，為避免不必要的人際關係損失，在辦公桌上寫個貼士提醒自己吧；單身者戀情發展則由朋友變為情侶的可能性很大。', '★★★☆☆', '你在感情上顯得較強勢，容易給另一半壓力，注意控制好情緒。', '★★☆☆☆', '做事不太容易抓住重點，別只看到表面現象，小心因此而判斷失誤。', '★☆☆☆☆', '散財之日，一出門就會化身成散財童子，不如拿點錢做做人情或是購物滿足物慾，不想花錢就少帶點錢在身上。', '2020-03-13 01:20:02', '2020-03-13 01:20:02'),
(2, '金牛座', 1, '★☆☆☆☆', '天與戀人說話注意措辭，不然容易被別有用心者加以利用，中傷你們之間的感情，會對你們辛苦建立起來的感情產生很壞的影響。工作上任務加重，但也不要把計劃排得太滿，這樣反而容易讓自己忙中出錯。', '★☆☆☆☆', '危險的一天，宜聚少離多，特別要注意金錢方面的爭執。', '★☆☆☆☆', '今日事業運不理想，負面思考太別嚴重，面對壓力會產生委屈心態或強烈的情緒反應！', '★★☆☆☆', '有漏小財的跡象，例如：掉錢包、意外破小財。', '2020-03-13 01:20:02', '2020-03-13 01:20:02'),
(3, '雙子座', 2, '★★★☆☆', '情需要兩個人共同經營，夫妻在溝通時意見不合的機率高，需要你先做出讓步，才不會發生劇烈的爭執。喜愛購物的人今天是不錯的好機會，許多幸運的事情正在向你招手。亮麗的打扮也能為好運加分哦！', '★★☆☆☆', '感情上有點鬱悶，外力的干擾容易讓你煩惱傷神，別小題大作，更別吃醋吃過頭囉！', '★★★☆☆', '合理的安排作息時間，不要安排太多的娛樂活動，過度的玩樂會讓你失去工作的激情。', '★★★★☆', '財運佳，四處充滿商機，適合運用口才開發財源，進帳豐厚。', '2020-03-13 01:20:02', '2020-03-13 01:20:02'),
(4, '巨蟹座', 3, '★★★★☆', '身者今天的求愛成功指數很高，抓住機會向心儀對象表白吧；有種缺錢花的感覺，但隨著賺錢的慾望不斷膨脹，能想出很不錯的賺錢點子；從事銷售工作的人，能用微笑贏得不少客戶的信賴。', '★★★★★', '恩怨化解日，先前有發生不愉快的事情者，趁今日好好的溝通吧！', '★★★★☆', '是證明實力的好時機，別人覺得有困難的事情不妨接過來做，你會很有收穫！', '★★★☆☆', '做好財務規劃，花錢別太隨意。', '2020-03-13 01:20:03', '2020-03-13 01:20:03'),
(5, '獅子座', 4, '★★★☆☆', '作需要多與他人合作才能更順利，單打獨鬥會讓你四處碰壁。財運佳，出門在外多留意路邊的廣告、招貼，易在不經意間獲得商機。愛情方面，單身者有機會因親友介紹結識不錯的異性朋友。', '★★★☆☆', '已婚者與另一半溝通時略顯沉默，別以為對方都瞭解你的心思，愛要表達出來才行唷！', '★★☆☆☆', '事業運不佳，乖乖的聽命行事較好，收起個人的主觀意識以及強烈的喜好心，多用客觀的角度看待份內事。', '★★★★☆', '財運很不錯，只要努力向上與人良性競爭，就能有意想不到的財富收穫。', '2020-03-13 01:20:03', '2020-03-13 01:20:03'),
(6, '處女座', 5, '★★★★☆', '目的跟隨潮流進行投資，會讓你摔大跟頭。父母會在你耳邊不停的嘮叨，督促你趕快戀愛或結婚，讓你很無奈。就讀或從事藝術類的學生或工作者易得到專業人事的賞識。', '★★★★☆', '異性緣還不錯，在外活動容易得到受到異性的青睞。', '★★★★☆', '事業運不錯，是個學以致用的好日子，多發揮個人的專業素養吧！', '★★☆☆☆', '耗損之日，你經手的東西特別容易損壞喔，所以呢今日不適合穿著、配戴、使用價格貴重的物品！', '2020-03-13 01:20:03', '2020-03-13 01:20:03'),
(7, '天秤座', 6, '★★★★★', '運較好，沒有大手筆資金流入，卻因合理消費而節省不少開支；今天的狀態還不錯，且同事對你的信任也是有增無減，讓你獲得不少成就感；短暫離開段日子的情侶在今天重逢顯得特有激情，有水乳交融之感。', '★★★★☆', '今日是談理想、心靈溝通的好日子，說說你的心裡話讓對方知道吧！', '★★★★☆', '事業運還不錯，容易掌握重點來做事，所以效率上還不差。', '★★★★☆', '財運旺旺日，賺錢機會多，而且今日對利潤的敏銳度很強，頗適合金錢遊戲，也適合買賣。', '2020-03-13 01:20:04', '2020-03-13 01:20:04'),
(8, '天蠍座', 7, '★★☆☆☆', '天工作中顯得太過急躁，雖然能按量完成，但質量不達標反而耽誤你更多的時間；有伴侶者戀情出現轉機，熱度急劇上升讓你覺得有點難以至信；投資波動較大，不要急於出倉，有反彈的契機，會因此而小賺一筆。', '★★★☆☆', '已婚者感情生活較平淡。你的冷靜態度，容易讓另一半誤會，覺得你不關心TA喔！', '★★☆☆☆', '沒有周圍人的協助，會讓你做事失去以往的順暢。多保持與同事溝通。', '★★☆☆☆', '小心破財，例如：遭竊、修車、受騙、收到罰單等等！', '2020-03-13 01:20:04', '2020-03-13 01:20:04'),
(9, '射手座', 8, '★★★☆☆', '情運頗好，今天有機會在逛街時偶遇曾經喜歡的異性。工作激情減退，但可利用休息時間，約同事一起happy，能加強同仁間的友情。財運一般，生意人對客人多一份熱情，才會有不錯的業績。', '★★★★☆', '異性緣佳，但你會顯得過度熱心，造成異性朋友會錯意，這會讓你陷入困擾喔！', '★★☆☆☆', '事業運略差，工作中遇到瓶頸時多用客觀的角度來思考，不要過度偏機了喔！', '★★★☆☆', '打腫臉充胖子，難以量入為出。', '2020-03-13 01:20:04', '2020-03-13 01:20:04'),
(10, '摩羯座', 9, '★★★★☆', '天有機會與有緣人相遇，還是控制一下自己的情緒，小心因激動破壞自己在對方心中的形象。工作業績有所突顯，為升職加薪積蓄了籌碼。晚上可以去K歌，把你的熱情用歌聲唱出來，會有提升運勢的功效。', '★★★☆☆', '運勢平平，花點精神在自己身上，不要去挑剔對方。', '★★★★☆', '事業運頗優，有利於業務工作者，在外頭奔波一番多能有正面收穫；今日有機會得到貴人從中協助。', '★★★☆☆', '今日花錢的慾望很大，看到喜歡的東西很難控制消費欲，如果想省錢，今日就別逛街囉！', '2020-03-13 01:20:04', '2020-03-13 01:20:04'),
(11, '水瓶座', 10, '★★☆☆☆', '抑已久的情緒，極欲爆發，找個時間向另一半說明，讓對方瞭解你的心情。財運平平，有好的東西盡量與大家分享，易得到貴人指引。工作上，平日的經驗積累，讓你今天受益匪淺。', '★★☆☆☆', '已婚者對另一半應誠實，千萬別說謊，容易被對方識破；單身者適合獨處，調整心情。', '★★★☆☆', '敏感的一面容易突顯，聽到外界的一些謠言就懷疑是有不好的事情降臨在自己的身上，讓你心神不安，工作速度也因此減慢。', '★★☆☆☆', '財運不太妙，做好錢財規劃，一些重大投資不宜輕易下賭注，多聽有經驗人士的意見。', '2020-03-13 01:20:05', '2020-03-13 01:20:05'),
(12, '雙魚座', 11, '★★★☆☆', '身貴族看到周圍的情侶們都濃情蜜意，心裡感到特別的孤獨，不妨去健健身、上上網，既能排除寂寞感又能讓你變得充實；工作精力旺盛，辦事效率大有提高；投資切忌盲目跟風，小心因此摔跟頭。', '★☆☆☆☆', '戀愛運很背，彼此的爭執多，不要太愛比較囉，因為比贏了又怎樣！', '★★★★★', '今日的事業運棒呆了，有領導帶頭的機會。可是呢，今天八成會忙翻天，許多事情會同時進行，可要耐著性子來處理喔！', '★★★☆☆', '財運一般，投機上你有認賠的肚量，投資上也要多注意。', '2020-03-13 01:20:05', '2020-03-13 01:20:05'),
(13, '牡羊座', 0, '★★☆☆☆', '有血拼的慾望，也容易被賣家口若懸河的吹捧弄得暈頭轉向，而讓自己花費不少；工作則有些剛愎自用，為避免不必要的人際關係損失，在辦公桌上寫個貼士提醒自己吧；單身者戀情發展則由朋友變為情侶的可能性很大。', '★★★☆☆', '你在感情上顯得較強勢，容易給另一半壓力，注意控制好情緒。', '★★☆☆☆', '做事不太容易抓住重點，別只看到表面現象，小心因此而判斷失誤。', '★☆☆☆☆', '散財之日，一出門就會化身成散財童子，不如拿點錢做做人情或是購物滿足物慾，不想花錢就少帶點錢在身上。', '2020-03-13 01:25:01', '2020-03-13 01:25:01'),
(14, '金牛座', 1, '★☆☆☆☆', '天與戀人說話注意措辭，不然容易被別有用心者加以利用，中傷你們之間的感情，會對你們辛苦建立起來的感情產生很壞的影響。工作上任務加重，但也不要把計劃排得太滿，這樣反而容易讓自己忙中出錯。', '★☆☆☆☆', '危險的一天，宜聚少離多，特別要注意金錢方面的爭執。', '★☆☆☆☆', '今日事業運不理想，負面思考太別嚴重，面對壓力會產生委屈心態或強烈的情緒反應！', '★★☆☆☆', '有漏小財的跡象，例如：掉錢包、意外破小財。', '2020-03-13 01:25:02', '2020-03-13 01:25:02'),
(15, '雙子座', 2, '★★★☆☆', '情需要兩個人共同經營，夫妻在溝通時意見不合的機率高，需要你先做出讓步，才不會發生劇烈的爭執。喜愛購物的人今天是不錯的好機會，許多幸運的事情正在向你招手。亮麗的打扮也能為好運加分哦！', '★★☆☆☆', '感情上有點鬱悶，外力的干擾容易讓你煩惱傷神，別小題大作，更別吃醋吃過頭囉！', '★★★☆☆', '合理的安排作息時間，不要安排太多的娛樂活動，過度的玩樂會讓你失去工作的激情。', '★★★★☆', '財運佳，四處充滿商機，適合運用口才開發財源，進帳豐厚。', '2020-03-13 01:25:02', '2020-03-13 01:25:02'),
(16, '巨蟹座', 3, '★★★★☆', '身者今天的求愛成功指數很高，抓住機會向心儀對象表白吧；有種缺錢花的感覺，但隨著賺錢的慾望不斷膨脹，能想出很不錯的賺錢點子；從事銷售工作的人，能用微笑贏得不少客戶的信賴。', '★★★★★', '恩怨化解日，先前有發生不愉快的事情者，趁今日好好的溝通吧！', '★★★★☆', '是證明實力的好時機，別人覺得有困難的事情不妨接過來做，你會很有收穫！', '★★★☆☆', '做好財務規劃，花錢別太隨意。', '2020-03-13 01:25:02', '2020-03-13 01:25:02'),
(17, '獅子座', 4, '★★★☆☆', '作需要多與他人合作才能更順利，單打獨鬥會讓你四處碰壁。財運佳，出門在外多留意路邊的廣告、招貼，易在不經意間獲得商機。愛情方面，單身者有機會因親友介紹結識不錯的異性朋友。', '★★★☆☆', '已婚者與另一半溝通時略顯沉默，別以為對方都瞭解你的心思，愛要表達出來才行唷！', '★★☆☆☆', '事業運不佳，乖乖的聽命行事較好，收起個人的主觀意識以及強烈的喜好心，多用客觀的角度看待份內事。', '★★★★☆', '財運很不錯，只要努力向上與人良性競爭，就能有意想不到的財富收穫。', '2020-03-13 01:25:03', '2020-03-13 01:25:03'),
(18, '處女座', 5, '★★★★☆', '目的跟隨潮流進行投資，會讓你摔大跟頭。父母會在你耳邊不停的嘮叨，督促你趕快戀愛或結婚，讓你很無奈。就讀或從事藝術類的學生或工作者易得到專業人事的賞識。', '★★★★☆', '異性緣還不錯，在外活動容易得到受到異性的青睞。', '★★★★☆', '事業運不錯，是個學以致用的好日子，多發揮個人的專業素養吧！', '★★☆☆☆', '耗損之日，你經手的東西特別容易損壞喔，所以呢今日不適合穿著、配戴、使用價格貴重的物品！', '2020-03-13 01:25:03', '2020-03-13 01:25:03'),
(19, '天秤座', 6, '★★★★★', '運較好，沒有大手筆資金流入，卻因合理消費而節省不少開支；今天的狀態還不錯，且同事對你的信任也是有增無減，讓你獲得不少成就感；短暫離開段日子的情侶在今天重逢顯得特有激情，有水乳交融之感。', '★★★★☆', '今日是談理想、心靈溝通的好日子，說說你的心裡話讓對方知道吧！', '★★★★☆', '事業運還不錯，容易掌握重點來做事，所以效率上還不差。', '★★★★☆', '財運旺旺日，賺錢機會多，而且今日對利潤的敏銳度很強，頗適合金錢遊戲，也適合買賣。', '2020-03-13 01:25:03', '2020-03-13 01:25:03'),
(20, '天蠍座', 7, '★★☆☆☆', '天工作中顯得太過急躁，雖然能按量完成，但質量不達標反而耽誤你更多的時間；有伴侶者戀情出現轉機，熱度急劇上升讓你覺得有點難以至信；投資波動較大，不要急於出倉，有反彈的契機，會因此而小賺一筆。', '★★★☆☆', '已婚者感情生活較平淡。你的冷靜態度，容易讓另一半誤會，覺得你不關心TA喔！', '★★☆☆☆', '沒有周圍人的協助，會讓你做事失去以往的順暢。多保持與同事溝通。', '★★☆☆☆', '小心破財，例如：遭竊、修車、受騙、收到罰單等等！', '2020-03-13 01:25:03', '2020-03-13 01:25:03'),
(21, '射手座', 8, '★★★☆☆', '情運頗好，今天有機會在逛街時偶遇曾經喜歡的異性。工作激情減退，但可利用休息時間，約同事一起happy，能加強同仁間的友情。財運一般，生意人對客人多一份熱情，才會有不錯的業績。', '★★★★☆', '異性緣佳，但你會顯得過度熱心，造成異性朋友會錯意，這會讓你陷入困擾喔！', '★★☆☆☆', '事業運略差，工作中遇到瓶頸時多用客觀的角度來思考，不要過度偏機了喔！', '★★★☆☆', '打腫臉充胖子，難以量入為出。', '2020-03-13 01:25:04', '2020-03-13 01:25:04'),
(22, '摩羯座', 9, '★★★★☆', '天有機會與有緣人相遇，還是控制一下自己的情緒，小心因激動破壞自己在對方心中的形象。工作業績有所突顯，為升職加薪積蓄了籌碼。晚上可以去K歌，把你的熱情用歌聲唱出來，會有提升運勢的功效。', '★★★☆☆', '運勢平平，花點精神在自己身上，不要去挑剔對方。', '★★★★☆', '事業運頗優，有利於業務工作者，在外頭奔波一番多能有正面收穫；今日有機會得到貴人從中協助。', '★★★☆☆', '今日花錢的慾望很大，看到喜歡的東西很難控制消費欲，如果想省錢，今日就別逛街囉！', '2020-03-13 01:25:04', '2020-03-13 01:25:04'),
(23, '水瓶座', 10, '★★☆☆☆', '抑已久的情緒，極欲爆發，找個時間向另一半說明，讓對方瞭解你的心情。財運平平，有好的東西盡量與大家分享，易得到貴人指引。工作上，平日的經驗積累，讓你今天受益匪淺。', '★★☆☆☆', '已婚者對另一半應誠實，千萬別說謊，容易被對方識破；單身者適合獨處，調整心情。', '★★★☆☆', '敏感的一面容易突顯，聽到外界的一些謠言就懷疑是有不好的事情降臨在自己的身上，讓你心神不安，工作速度也因此減慢。', '★★☆☆☆', '財運不太妙，做好錢財規劃，一些重大投資不宜輕易下賭注，多聽有經驗人士的意見。', '2020-03-13 01:25:04', '2020-03-13 01:25:04'),
(24, '雙魚座', 11, '★★★☆☆', '身貴族看到周圍的情侶們都濃情蜜意，心裡感到特別的孤獨，不妨去健健身、上上網，既能排除寂寞感又能讓你變得充實；工作精力旺盛，辦事效率大有提高；投資切忌盲目跟風，小心因此摔跟頭。', '★☆☆☆☆', '戀愛運很背，彼此的爭執多，不要太愛比較囉，因為比贏了又怎樣！', '★★★★★', '今日的事業運棒呆了，有領導帶頭的機會。可是呢，今天八成會忙翻天，許多事情會同時進行，可要耐著性子來處理喔！', '★★★☆☆', '財運一般，投機上你有認賠的肚量，投資上也要多注意。', '2020-03-13 01:25:05', '2020-03-13 01:25:05'),
(25, '牡羊座', 0, '★★☆☆☆', '有血拼的慾望，也容易被賣家口若懸河的吹捧弄得暈頭轉向，而讓自己花費不少；工作則有些剛愎自用，為避免不必要的人際關係損失，在辦公桌上寫個貼士提醒自己吧；單身者戀情發展則由朋友變為情侶的可能性很大。', '★★★☆☆', '你在感情上顯得較強勢，容易給另一半壓力，注意控制好情緒。', '★★☆☆☆', '做事不太容易抓住重點，別只看到表面現象，小心因此而判斷失誤。', '★☆☆☆☆', '散財之日，一出門就會化身成散財童子，不如拿點錢做做人情或是購物滿足物慾，不想花錢就少帶點錢在身上。', '2020-03-13 01:30:03', '2020-03-13 01:30:03'),
(26, '金牛座', 1, '★☆☆☆☆', '天與戀人說話注意措辭，不然容易被別有用心者加以利用，中傷你們之間的感情，會對你們辛苦建立起來的感情產生很壞的影響。工作上任務加重，但也不要把計劃排得太滿，這樣反而容易讓自己忙中出錯。', '★☆☆☆☆', '危險的一天，宜聚少離多，特別要注意金錢方面的爭執。', '★☆☆☆☆', '今日事業運不理想，負面思考太別嚴重，面對壓力會產生委屈心態或強烈的情緒反應！', '★★☆☆☆', '有漏小財的跡象，例如：掉錢包、意外破小財。', '2020-03-13 01:30:03', '2020-03-13 01:30:03'),
(27, '雙子座', 2, '★★★☆☆', '情需要兩個人共同經營，夫妻在溝通時意見不合的機率高，需要你先做出讓步，才不會發生劇烈的爭執。喜愛購物的人今天是不錯的好機會，許多幸運的事情正在向你招手。亮麗的打扮也能為好運加分哦！', '★★☆☆☆', '感情上有點鬱悶，外力的干擾容易讓你煩惱傷神，別小題大作，更別吃醋吃過頭囉！', '★★★☆☆', '合理的安排作息時間，不要安排太多的娛樂活動，過度的玩樂會讓你失去工作的激情。', '★★★★☆', '財運佳，四處充滿商機，適合運用口才開發財源，進帳豐厚。', '2020-03-13 01:30:03', '2020-03-13 01:30:03'),
(28, '巨蟹座', 3, '★★★★☆', '身者今天的求愛成功指數很高，抓住機會向心儀對象表白吧；有種缺錢花的感覺，但隨著賺錢的慾望不斷膨脹，能想出很不錯的賺錢點子；從事銷售工作的人，能用微笑贏得不少客戶的信賴。', '★★★★★', '恩怨化解日，先前有發生不愉快的事情者，趁今日好好的溝通吧！', '★★★★☆', '是證明實力的好時機，別人覺得有困難的事情不妨接過來做，你會很有收穫！', '★★★☆☆', '做好財務規劃，花錢別太隨意。', '2020-03-13 01:30:04', '2020-03-13 01:30:04'),
(29, '獅子座', 4, '★★★☆☆', '作需要多與他人合作才能更順利，單打獨鬥會讓你四處碰壁。財運佳，出門在外多留意路邊的廣告、招貼，易在不經意間獲得商機。愛情方面，單身者有機會因親友介紹結識不錯的異性朋友。', '★★★☆☆', '已婚者與另一半溝通時略顯沉默，別以為對方都瞭解你的心思，愛要表達出來才行唷！', '★★☆☆☆', '事業運不佳，乖乖的聽命行事較好，收起個人的主觀意識以及強烈的喜好心，多用客觀的角度看待份內事。', '★★★★☆', '財運很不錯，只要努力向上與人良性競爭，就能有意想不到的財富收穫。', '2020-03-13 01:30:04', '2020-03-13 01:30:04'),
(30, '處女座', 5, '★★★★☆', '目的跟隨潮流進行投資，會讓你摔大跟頭。父母會在你耳邊不停的嘮叨，督促你趕快戀愛或結婚，讓你很無奈。就讀或從事藝術類的學生或工作者易得到專業人事的賞識。', '★★★★☆', '異性緣還不錯，在外活動容易得到受到異性的青睞。', '★★★★☆', '事業運不錯，是個學以致用的好日子，多發揮個人的專業素養吧！', '★★☆☆☆', '耗損之日，你經手的東西特別容易損壞喔，所以呢今日不適合穿著、配戴、使用價格貴重的物品！', '2020-03-13 01:30:04', '2020-03-13 01:30:04'),
(31, '天秤座', 6, '★★★★★', '運較好，沒有大手筆資金流入，卻因合理消費而節省不少開支；今天的狀態還不錯，且同事對你的信任也是有增無減，讓你獲得不少成就感；短暫離開段日子的情侶在今天重逢顯得特有激情，有水乳交融之感。', '★★★★☆', '今日是談理想、心靈溝通的好日子，說說你的心裡話讓對方知道吧！', '★★★★☆', '事業運還不錯，容易掌握重點來做事，所以效率上還不差。', '★★★★☆', '財運旺旺日，賺錢機會多，而且今日對利潤的敏銳度很強，頗適合金錢遊戲，也適合買賣。', '2020-03-13 01:30:05', '2020-03-13 01:30:05'),
(32, '天蠍座', 7, '★★☆☆☆', '天工作中顯得太過急躁，雖然能按量完成，但質量不達標反而耽誤你更多的時間；有伴侶者戀情出現轉機，熱度急劇上升讓你覺得有點難以至信；投資波動較大，不要急於出倉，有反彈的契機，會因此而小賺一筆。', '★★★☆☆', '已婚者感情生活較平淡。你的冷靜態度，容易讓另一半誤會，覺得你不關心TA喔！', '★★☆☆☆', '沒有周圍人的協助，會讓你做事失去以往的順暢。多保持與同事溝通。', '★★☆☆☆', '小心破財，例如：遭竊、修車、受騙、收到罰單等等！', '2020-03-13 01:30:05', '2020-03-13 01:30:05'),
(33, '射手座', 8, '★★★☆☆', '情運頗好，今天有機會在逛街時偶遇曾經喜歡的異性。工作激情減退，但可利用休息時間，約同事一起happy，能加強同仁間的友情。財運一般，生意人對客人多一份熱情，才會有不錯的業績。', '★★★★☆', '異性緣佳，但你會顯得過度熱心，造成異性朋友會錯意，這會讓你陷入困擾喔！', '★★☆☆☆', '事業運略差，工作中遇到瓶頸時多用客觀的角度來思考，不要過度偏機了喔！', '★★★☆☆', '打腫臉充胖子，難以量入為出。', '2020-03-13 01:30:05', '2020-03-13 01:30:05'),
(34, '摩羯座', 9, '★★★★☆', '天有機會與有緣人相遇，還是控制一下自己的情緒，小心因激動破壞自己在對方心中的形象。工作業績有所突顯，為升職加薪積蓄了籌碼。晚上可以去K歌，把你的熱情用歌聲唱出來，會有提升運勢的功效。', '★★★☆☆', '運勢平平，花點精神在自己身上，不要去挑剔對方。', '★★★★☆', '事業運頗優，有利於業務工作者，在外頭奔波一番多能有正面收穫；今日有機會得到貴人從中協助。', '★★★☆☆', '今日花錢的慾望很大，看到喜歡的東西很難控制消費欲，如果想省錢，今日就別逛街囉！', '2020-03-13 01:30:05', '2020-03-13 01:30:05'),
(35, '水瓶座', 10, '★★☆☆☆', '抑已久的情緒，極欲爆發，找個時間向另一半說明，讓對方瞭解你的心情。財運平平，有好的東西盡量與大家分享，易得到貴人指引。工作上，平日的經驗積累，讓你今天受益匪淺。', '★★☆☆☆', '已婚者對另一半應誠實，千萬別說謊，容易被對方識破；單身者適合獨處，調整心情。', '★★★☆☆', '敏感的一面容易突顯，聽到外界的一些謠言就懷疑是有不好的事情降臨在自己的身上，讓你心神不安，工作速度也因此減慢。', '★★☆☆☆', '財運不太妙，做好錢財規劃，一些重大投資不宜輕易下賭注，多聽有經驗人士的意見。', '2020-03-13 01:30:06', '2020-03-13 01:30:06'),
(36, '雙魚座', 11, '★★★☆☆', '身貴族看到周圍的情侶們都濃情蜜意，心裡感到特別的孤獨，不妨去健健身、上上網，既能排除寂寞感又能讓你變得充實；工作精力旺盛，辦事效率大有提高；投資切忌盲目跟風，小心因此摔跟頭。', '★☆☆☆☆', '戀愛運很背，彼此的爭執多，不要太愛比較囉，因為比贏了又怎樣！', '★★★★★', '今日的事業運棒呆了，有領導帶頭的機會。可是呢，今天八成會忙翻天，許多事情會同時進行，可要耐著性子來處理喔！', '★★★☆☆', '財運一般，投機上你有認賠的肚量，投資上也要多注意。', '2020-03-13 01:30:06', '2020-03-13 01:30:06');

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `fortune`
--
ALTER TABLE `fortune`
  ADD PRIMARY KEY (`id`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `fortune`
--
ALTER TABLE `fortune`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=193;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;