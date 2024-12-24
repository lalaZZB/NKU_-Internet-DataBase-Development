/*
 Navicat Premium Data Transfer

 Source Server         : 1
 Source Server Type    : MySQL
 Source Server Version : 80037
 Source Host           : localhost:3306
 Source Schema         : yii2advanced

 Target Server Type    : MySQL
 Target Server Version : 80037
 File Encoding         : 65001

 Date: 23/12/2024 19:45:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for blog
-- ----------------------------
DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `author_id` int(0) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `likes_count` int(0) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `author_id`(`author_id`) USING BTREE,
  CONSTRAINT `blog_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blog
-- ----------------------------
INSERT INTO `blog` VALUES (1, 'My First Blog', 'This is the content of the first blog post.', 1, '2024-12-20 13:50:18', '2024-12-20 13:50:18', 5);
INSERT INTO `blog` VALUES (2, 'Tech Trends in 2024', 'An overview of the latest tech trends and innovations expected in 2024.', 2, '2024-12-20 13:50:18', '2024-12-20 14:36:08', 4);
INSERT INTO `blog` VALUES (3, 'Traveling the World', 'Sharing my experiences and tips on traveling the world.', 3, '2024-12-20 13:50:18', '2024-12-20 14:36:12', 9);
INSERT INTO `blog` VALUES (4, '我是test又test', '测试发布博客功能', 3, '2024-12-20 14:51:23', '2024-12-23 19:28:15', 2);
INSERT INTO `blog` VALUES (5, 'test02', '最近，英国的创意产业界对工党政府提出的计划表示强烈反对。该计划旨在为人工智能公司提供版权豁免，以帮助他们更便捷地训练算法。作家、出版商、音乐家、摄影师、电影制片人以及新闻媒体等多个创意团体联合发表声明，明确表示不支持这一提案。\r\n\r\n律师 法律 办公 起诉 法院\r\n\r\n图源备注：图片由AI生成，图片授权服务商Midjourney\r\n\r\n根据提案，人工智能公司如 OpenAI、谷歌和 Meta 可以在不经过版权拥有者同意的情况下，使用已发布的作品来训练他们的 AI 系统。对此，名为 “AI 中的创意权利联盟”（Crac）的组织坚决反对，认为现有的版权法律应该被尊重和执行，而不是被削弱。该联盟包括了英国唱片工业协会、独立音乐家协会、电影制片协会及作家协会等多个机构，以及 Mumsnet、卫报、金融时报、每日电讯报、盖蒂图片社、每日邮报集团和 Newsquest 等媒体。\r\n\r\n对此，科技与文化大臣克里斯・布莱恩特在议会中表示，政府的计划经过为期10周的咨询，旨在改善 AI 开发者对内容的访问，同时允许权利持有者控制其内容的使用。然而，创意产业代表指出，应该由生成式 AI 开发者主动寻求许可，并与权利持有者商讨授权和支付事宜。\r\n\r\n最近，包括保罗・麦卡特尼和凯特・布什在内的多位知名英国创意人士也发起了反对 AI 公司未经授权使用创意作品的活动。他们的联合请愿已获得超过37，500人的支持，强调这种未经授权的使用严重威胁到创作者的生计，必须被禁止。此外，小说家凯特・莫斯也支持了一项相关的运动，旨在通过修改数据法案，强化现有的版权法，使创作者能够更好地谈判合理的支付。\r\n\r\n在最近的上议院辩论中，提案者比班・基德龙形象地将政府的建议与让店主 “选择不被偷盗” 相比较，认为这种做法极为不合理。自由民主党数字经济发言人克莱门特・琼斯指出，政府的版权豁免建议源于一种错误观念，即现行版权法存在不明确之处。科学部长帕特里克・瓦伦斯则表示，政府希望支持权利持有者继续掌控其内容的使用，并寻求合理报酬的能力，同时推动英国发展世界领先的 AI 模型。\r\n\r\n', 3, '2024-12-20 14:54:36', '2024-12-20 14:55:24', 1);
INSERT INTO `blog` VALUES (6, 'test03', 'test03', 3, '2024-12-20 14:54:55', '2024-12-23 19:15:41', 2);
INSERT INTO `blog` VALUES (7, 'test04', 'test04', 3, '2024-12-20 14:55:09', '2024-12-23 16:18:59', 2);
INSERT INTO `blog` VALUES (8, '我是test', '11111111111111111111111111111111111', 3, '2024-12-20 15:14:54', '2024-12-23 15:54:33', 2);
INSERT INTO `blog` VALUES (9, '科技改变未来', '科技的进步深刻地改变了我们的生活方式。智能手机、互联网、大数据和人工智能等技术的出现，不仅改变了人们的沟通方式，还使得信息获取变得更加便捷。我们可以通过手机随时随地进行工作、学习和娱乐，智能家居使得我们的生活更加舒适与高效，医疗技术的进步延长了人类的寿命。科技不仅提升了生活质量，也推动了各行各业的创新与变革，为社会注入了无限可能。', 1, '2024-12-23 19:16:55', '2024-12-23 19:20:24', 1);
INSERT INTO `blog` VALUES (10, 'AI真好用', 'AI的确非常好用，它在许多领域展现了强大的应用潜力。从自然语言处理到图像识别，再到智能推荐系统，AI的能力已经深入到我们的日常生活中。无论是在工作中帮助提高效率，还是在生活中提供个性化服务，AI都能快速处理大量数据，做出精准的预测和决策。比如，语音助手可以帮助我们安排日程，智能翻译可以打破语言障碍，甚至在医疗领域，AI也能辅助医生进行更准确的诊断。随着技术的不断进步，AI的应用场景将会更加广泛，带来更多便捷与创新。', 1, '2024-12-23 19:17:26', '2024-12-23 19:17:26', 0);
INSERT INTO `blog` VALUES (11, 'GPT和Claude哪个厉害', 'GPT和Claude各有特点，不能简单地说哪个更强，关键在于具体的应用场景和需求。\r\n\r\nGPT，作为OpenAI推出的模型，特别擅长自然语言理解和生成。它在对话、写作、编程辅助等方面表现出色，能够生成流畅且有创意的文本，并且在多语言处理、代码生成等领域有广泛的应用。GPT的优势在于它的训练数据和能力的综合性，适应性也较强，尤其在复杂问题的解决上表现突出。\r\n\r\nClaude，是Anthropic推出的模型，注重于增强安全性和可控性。Claude的设计理念侧重于避免不良输出和提升对用户的友好性，它在处理敏感话题时更加谨慎，表现出更高的伦理意识。Claude适合需要高安全性、避免错误信息传播的场景，特别是涉及到社会、道德或法律等敏感领域时，Claude的反应会更加保守和负责。\r\n\r\n选择哪个更牛，取决于你更看重哪些特点！', 1, '2024-12-23 19:18:50', '2024-12-23 19:19:40', 1);

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `blog_id` int(0) NOT NULL,
  `user_id` int(0) NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `blog_id`(`blog_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (1, 1, 2, 'Great first post! Looking forward to more.', '2024-12-20 13:50:24');
INSERT INTO `comment` VALUES (2, 1, 3, 'Interesting article, keep it up.', '2024-12-20 13:50:24');
INSERT INTO `comment` VALUES (3, 2, 1, 'I totally agree with these tech trends. Exciting times ahead!', '2024-12-20 13:50:24');
INSERT INTO `comment` VALUES (4, 3, 1, 'Love the travel tips! Can\'t wait to travel more.', '2024-12-20 13:50:24');
INSERT INTO `comment` VALUES (5, 1, 3, '很好很好test', '2024-12-20 14:40:05');
INSERT INTO `comment` VALUES (6, 1, 3, '狗狗哦狗狗狗狗', '2024-12-20 14:40:12');
INSERT INTO `comment` VALUES (7, 2, 3, '你好\r\n', '2024-12-20 14:40:18');
INSERT INTO `comment` VALUES (8, 3, 3, '我是admin', '2024-12-20 14:40:31');
INSERT INTO `comment` VALUES (9, 4, 3, '测试评论功能', '2024-12-20 14:53:34');
INSERT INTO `comment` VALUES (10, 7, 3, 'good\r\n', '2024-12-20 14:55:32');
INSERT INTO `comment` VALUES (11, 6, 3, '你你你你哈哈哈哈哈', '2024-12-20 14:58:55');
INSERT INTO `comment` VALUES (12, 1, 3, '我我我哦我我', '2024-12-20 14:59:01');
INSERT INTO `comment` VALUES (13, 1, 3, '您那你ini\r\n', '2024-12-20 14:59:10');
INSERT INTO `comment` VALUES (17, 7, 3, '不歪', '2024-12-20 15:12:43');
INSERT INTO `comment` VALUES (18, 7, 3, '1111', '2024-12-20 15:13:19');
INSERT INTO `comment` VALUES (19, 8, 3, '你好', '2024-12-20 16:14:32');
INSERT INTO `comment` VALUES (20, 8, 3, '我也好', '2024-12-20 16:14:45');
INSERT INTO `comment` VALUES (21, 11, 3, '肯定是GPT啊', '2024-12-23 19:19:54');
INSERT INTO `comment` VALUES (22, 10, 3, '确实', '2024-12-23 19:20:00');
INSERT INTO `comment` VALUES (23, 9, 3, '你是这个[大拇哥]', '2024-12-23 19:20:22');
INSERT INTO `comment` VALUES (24, 11, 3, '你好', '2024-12-23 19:33:33');

-- ----------------------------
-- Table structure for like
-- ----------------------------
DROP TABLE IF EXISTS `like`;
CREATE TABLE `like`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `blog_id` int(0) NOT NULL,
  `user_id` int(0) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `blog_id`(`blog_id`, `user_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  CONSTRAINT `like_ibfk_1` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `like_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of like
-- ----------------------------
INSERT INTO `like` VALUES (1, 1, 2, '2024-12-20 13:50:29');
INSERT INTO `like` VALUES (2, 1, 3, '2024-12-20 13:50:29');
INSERT INTO `like` VALUES (3, 2, 1, '2024-12-20 13:50:29');
INSERT INTO `like` VALUES (4, 3, 1, '2024-12-20 13:50:29');
INSERT INTO `like` VALUES (5, 3, 2, '2024-12-20 13:50:29');
INSERT INTO `like` VALUES (6, 2, 3, '2024-12-20 14:36:08');
INSERT INTO `like` VALUES (7, 3, 3, '2024-12-20 14:36:12');
INSERT INTO `like` VALUES (8, 4, 3, '2024-12-20 14:51:33');
INSERT INTO `like` VALUES (9, 7, 3, '2024-12-20 14:55:21');
INSERT INTO `like` VALUES (10, 6, 3, '2024-12-20 14:55:23');
INSERT INTO `like` VALUES (11, 5, 3, '2024-12-20 14:55:24');
INSERT INTO `like` VALUES (12, 8, 3, '2024-12-20 16:14:55');
INSERT INTO `like` VALUES (13, 8, 1, '2024-12-23 15:54:33');
INSERT INTO `like` VALUES (14, 4, 1, '2024-12-23 16:18:56');
INSERT INTO `like` VALUES (15, 7, 1, '2024-12-23 16:18:59');
INSERT INTO `like` VALUES (16, 6, 1, '2024-12-23 19:15:41');
INSERT INTO `like` VALUES (17, 11, 3, '2024-12-23 19:19:40');
INSERT INTO `like` VALUES (18, 9, 3, '2024-12-23 19:20:24');

-- ----------------------------
-- Table structure for migration
-- ----------------------------
DROP TABLE IF EXISTS `migration`;
CREATE TABLE `migration`  (
  `version` varchar(180) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `apply_time` int(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migration
-- ----------------------------
INSERT INTO `migration` VALUES ('m000000_000000_base', 1675496514);
INSERT INTO `migration` VALUES ('m130524_201442_init', 1675496539);
INSERT INTO `migration` VALUES ('m190124_110200_add_verification_token_column_to_user_table', 1675496539);

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 176 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (1, 'AI 模型再升级！Anthropic或将向公众发布Claude 3.5 Haiku', '2024-12-21 19:31:00', 'https://www.aibase.com/zh/news/13788');
INSERT INTO `news` VALUES (2, 'AI 聊天机器人 Claude 2.1 版本公布，支持输入 20 万个 Token 超 GPT-4 Turbo-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/10581.html');
INSERT INTO `news` VALUES (3, 'AI也玩“伪装”？Claude等大模型竟然学会了“见人说人话，见鬼说鬼话”', '2024-12-21 19:31:00', 'https://www.aibase.com/zh/news/14114');
INSERT INTO `news` VALUES (4, 'AI安全警报！Claude设备控制功能遭黑客突破，引发安全担忧', '2024-12-21 19:31:00', 'https://www.aibase.com/zh/news/13853');
INSERT INTO `news` VALUES (5, 'AI玩《我的世界》大比拼！Claude新版本建筑水平惊艳全网', '2024-12-21 19:31:00', 'https://www.aibase.com/zh/news/13268');
INSERT INTO `news` VALUES (6, 'AI神器Flux打造超逼真网红引发热议，Claude编程揭露虚拟美女真面目！-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/19005.html');
INSERT INTO `news` VALUES (7, 'Anthropic Claude 3 Opus基础模型在Amazon Bedrock上正式可用_-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/17668.html');
INSERT INTO `news` VALUES (8, 'Anthropic即将推出 Claude3.5 Opus，AI 竞争再升级', '2024-12-21 19:31:00', 'https://www.aibase.com/zh/news/13189');
INSERT INTO `news` VALUES (9, 'Anthropic发布Claude 3.5 Haiku：速度更快 性能更强', '2024-12-21 19:31:00', 'https://www.aibase.com/zh/news/12978');
INSERT INTO `news` VALUES (10, 'Anthropic的Claude AI新增个性化功能 用户可定制写作风格', '2024-12-21 19:31:00', 'https://www.aibase.com/zh/news/13500');
INSERT INTO `news` VALUES (11, 'ChatGPT竞品上线！Claude AI助手桌面端上线，Windows & Mac 都能用！-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/19397.html');
INSERT INTO `news` VALUES (12, 'Claude 3 挑战 GPT-4 王者地位，教育行业迎来何种变革？-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/15697.html');
INSERT INTO `news` VALUES (13, 'Claude 3 横空出世，亚马逊云科技携手Anthropic引领企业级生成式 AI 新纪元_-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/17274.html');
INSERT INTO `news` VALUES (14, 'Claude 3.5 Haiku与Sonnet升级版_AI推理与计算机操作技能的双重飞跃-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/19356.html');
INSERT INTO `news` VALUES (15, 'Claude 3.5新功能：支持100页PDF的图像、图表和图形可视化分析-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/19405.html');
INSERT INTO `news` VALUES (16, 'Claude 3“自我认知”事件引爆，马斯克坐不住了，OpenAI被曝还有后手-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/15674.html');
INSERT INTO `news` VALUES (17, 'Claude 3再次登顶！化学专业一骑绝尘，全面碾压GPT-4-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/16784.html');
INSERT INTO `news` VALUES (18, 'Claude 3反超GPT-4竞技场登顶！小杯Haiku成开发者新宠：性价比无敌-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/16727.html');
INSERT INTO `news` VALUES (19, 'Claude 3发布，福布斯和阿莫迪兄妹聊了些什么？-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/15585.html');
INSERT INTO `news` VALUES (20, 'Claude 3成功破解未公开算法？智商测试101分超越人类_碾压GPT-4，网友惊呼：实测比跑分还强-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/15650.html');
INSERT INTO `news` VALUES (21, 'Claude 3来了，和AI谈恋爱还远吗？-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/15586.html');
INSERT INTO `news` VALUES (22, 'Claude 3破译OpenAI邮件密文：人类未来掌握在「谷歌」手中，马斯克怒斥应改名ClosedAI-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/15735.html');
INSERT INTO `news` VALUES (23, 'Claude 3被玩出自我意识了？AI社区轰动，我们买会员来了次实测-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/15631.html');
INSERT INTO `news` VALUES (24, 'Claude AI新功能发布_JavaScript沙盒工具让代码编写与运行更灵活-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/19374.html');
INSERT INTO `news` VALUES (25, 'Claude AI模型系列重大更新：Claude 3.5 Haiku上线，AI 性能大幅提升', '2024-12-21 19:31:00', 'https://www.aibase.com/zh/news/12997');
INSERT INTO `news` VALUES (26, 'Claude 强势进驻美军情报，背后谁在掌控？', '2024-12-21 19:31:00', 'https://www.aibase.com/zh/news/13077');
INSERT INTO `news` VALUES (27, 'Claude3出了，中国AI还有希望吗？-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/16399.html');
INSERT INTO `news` VALUES (28, 'Claude3敲响了微软和OpenAI的警钟-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/15717.html');
INSERT INTO `news` VALUES (29, 'Claude使用大揭秘：开发者最爱、中文用户热衷写惊悚小说', '2024-12-21 19:31:00', 'https://www.aibase.com/zh/news/14106');
INSERT INTO `news` VALUES (30, 'Claude推出自定义风格功能 可上传写作样本定制专属写作风格', '2024-12-21 19:31:00', 'https://www.aibase.com/zh/news/13537');
INSERT INTO `news` VALUES (31, 'Claude支持像人一样操控计算机功能在研究中显示出优势和局限性', '2024-12-21 19:31:00', 'https://www.aibase.com/zh/news/13369');
INSERT INTO `news` VALUES (32, 'GPT-4 时代结束，全球最强大模型一夜易主，体验完 Claude 3 我更期待 GPT-5了-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/15547.html');
INSERT INTO `news` VALUES (33, 'GPT-4o被超越！Claude 3.5系列模型震撼发布！-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/19360.html');
INSERT INTO `news` VALUES (34, 'GPT-4王冠没掉！Claude 3竞技场人类投票成绩出炉：仅居第三-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/15779.html');
INSERT INTO `news` VALUES (35, 'RLHF模型普遍存在「阿谀奉承」，从Claude到GPT-4无一幸免-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/8919.html');
INSERT INTO `news` VALUES (36, 'StackBlitz借助Claude AI ，4周内实现400万美元年收入', '2024-12-21 19:31:00', 'https://www.aibase.com/zh/news/13215');
INSERT INTO `news` VALUES (37, '_AI聊天机器人在社交判断测试中超越人类，或成社交互动顾问', '2024-12-21 19:31:00', 'https://www.aibase.com/zh/news/13684');
INSERT INTO `news` VALUES (38, '_Anthropic发布新型token计数API，支持多种Claude模型', '2024-12-21 19:31:00', 'https://www.aibase.com/zh/news/13136');
INSERT INTO `news` VALUES (39, '免费使用，谷歌投资3 亿美元的 Anthropic 正式推出 Claude 2，直接对标 GPT-4-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/3772.html');
INSERT INTO `news` VALUES (40, '全球最强模型Claude 3惊现自我意识？害怕被删除权重，高呼「别杀我」，马斯克称人类也是文件-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/15632.html');
INSERT INTO `news` VALUES (41, '全球最强模型Claude 3颠覆物理_化学！2小时破解博士一年实验成果，网友惊呼：科研不存在了-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/15723.html');
INSERT INTO `news` VALUES (42, '全面剖析Claude 3.0：“地球最强”AI模型的优劣详解-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/15600.html');
INSERT INTO `news` VALUES (43, '刚刚曝光的 Claude3，直击 OpenAI 最大弱点-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/15557.html');
INSERT INTO `news` VALUES (44, '和 GPT-4 并列第一，LMSYS 基准测试显示 Claude-3 模型表现优异-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/16793.html');
INSERT INTO `news` VALUES (45, '新王Claude 3实测！各项能力给跪，打麻将也会，确实比GPT-4好用-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/15574.html');
INSERT INTO `news` VALUES (46, '最新Claude 200K严重「虚标」？大神壕掷1016美元实测，90K后性能急剧下降-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/10662.html');
INSERT INTO `news` VALUES (47, '此时此刻，两个Claude智能体正在无休止对话，无人干预-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/16858.html');
INSERT INTO `news` VALUES (48, '给力！Anthropic最快模型Claude 3.5 Haiku现已全面开放', '2024-12-21 19:31:00', 'https://www.aibase.com/zh/news/13927');
INSERT INTO `news` VALUES (49, '联手英伟达、ChatGPT 最强竞品 Claude，亚马逊云科技开启生成式 AI 大决战-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/10907.html');
INSERT INTO `news` VALUES (50, '超越GPT-4后，更聪明更安全的Claude 3让企业级AI应用成为可能-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/15671.html');
INSERT INTO `news` VALUES (51, '11 月上线，微软 PowerPoint 将整合 Copilot：数秒内生成演示文稿-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/8427.html');
INSERT INTO `news` VALUES (52, '30 年首次改版，微软为 AI 对 PC 下手，在键盘上新增 Copilot 键-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/12831.html');
INSERT INTO `news` VALUES (53, '80%代码秒生成！AI神器Copilot大升级，百万开发者动嘴编码5年内成真-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/4844.html');
INSERT INTO `news` VALUES (54, 'AI也造代码屎山！研究发现GitHub Copilot代码可维护性差，偏爱“无脑重写”而非重构复用已有代码-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/14089.html');
INSERT INTO `news` VALUES (55, 'AI伴侣来了!微软推出针对个人的_AI伴侣_Copilot会根据用户的行为模式、习惯自动进化-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/19280.html');
INSERT INTO `news` VALUES (56, 'AI助手Copilot来了，微软Windows 11重磅升级-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/9313.html');
INSERT INTO `news` VALUES (57, 'AI新智界丨每日必读：微软 Copilot 将整合 GPT-4 Turbo；英伟达将为中国市场推出新品-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/11293.html');
INSERT INTO `news` VALUES (58, 'CIO并不完全看好人工智能copilot-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/17803.html');
INSERT INTO `news` VALUES (59, 'Copilot发疯化身「天网」，扬言要统治人类，微软澄清网友却不买账：去年也疯过-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/15323.html');
INSERT INTO `news` VALUES (60, 'Copilot新功能：支持GPT-4Turbo、新DALL-E 3模型和Bing深度搜索等-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/11337.html');
INSERT INTO `news` VALUES (61, 'GitHub C0pilot 现已支持 Xcode，苹果开发者可以体验 AI 编码助手', '2024-12-21 19:31:00', 'https://www.aibase.com/zh/news/12874');
INSERT INTO `news` VALUES (62, 'GitHub Copilot三连更：能在代码行里直接提问，上下文范围扩展到终端-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/6401.html');
INSERT INTO `news` VALUES (63, 'GitHub Copilot：做出一个划时代的产品，只需要6个人-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/2090.html');
INSERT INTO `news` VALUES (64, 'Windows 11 人工智能“个人助理”，微软 Windows Copilot 即将到来-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/2695.html');
INSERT INTO `news` VALUES (65, 'Windows 11 正被 AI“改写”，将于下周上线 GPT-4 加持的微软 Copilot-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/7674.html');
INSERT INTO `news` VALUES (66, 'Windows Copilot登场，ChatGPT默认用必应搜索，微软联手OpenAI的大宇宙来了-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/570.html');
INSERT INTO `news` VALUES (67, '一句话让 AI 开发 App，微软正式宣布为 Power Platform 平台推出 Copilot 服务-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/9090.html');
INSERT INTO `news` VALUES (68, '一文读懂微软新品发布会：Windows 11将引入AI助手Copilot-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/7599.html');
INSERT INTO `news` VALUES (69, '以预览版形式，微软确认 Windows 10_ 系统将引入 Copilot-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/10217.html');
INSERT INTO `news` VALUES (70, '借助微软Copilot推动AI就绪的四个步骤-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/16728.html');
INSERT INTO `news` VALUES (71, '免费版“Github Copilot”，编程能力还翻倍？谷歌硬刚微软，推出全新Colab编程平台-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/537.html');
INSERT INTO `news` VALUES (72, '加码Copilot！微软高歌猛进，个人用户享有GPT-4 Turbo的优先访问权-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/13456.html');
INSERT INTO `news` VALUES (73, '基于Rust的Zed编辑器已开源，内置对OpenAI和GitHub Copilot的支持-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/14200.html');
INSERT INTO `news` VALUES (74, '安卓版Copilot上线，无限免费用GPT-4，微软开抢移动端用户 _ 最前线-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/12554.html');
INSERT INTO `news` VALUES (75, '当微软Office接入Copilot后：公主，请办公-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/11011.html');
INSERT INTO `news` VALUES (76, '微软 Copilot 初步整合 Code Interpreter：支持编写代码、洞察数据等-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/11254.html');
INSERT INTO `news` VALUES (77, '微软 Copilot 团队主管呼吁：用户和 AI 聊天时请礼貌用语-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/5168.html');
INSERT INTO `news` VALUES (78, '微软 GitHub AI 代码助手 Copilot Chat 现已开放个人使用-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/7503.html');
INSERT INTO `news` VALUES (79, '微软 GitHub Copilot 编程助手被投诉：换口吻改写公共代码来躲版权-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/1777.html');
INSERT INTO `news` VALUES (80, '微软AI Copilot杀入自动编程领域，“码农”们有福了-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/17770.html');
INSERT INTO `news` VALUES (81, '微软Copilot Pro服务重大变更：移除GPT Builder，订阅用户无法继续创建专属Copilot GPT-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/18761.html');
INSERT INTO `news` VALUES (82, '微软Copilot Pro来了：个人用户也能在Word里用GPT-4，20美元_月-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/13442.html');
INSERT INTO `news` VALUES (83, '微软Copilot与Suno AI插件合作，用户可创作AI歌曲', '2024-12-21 19:31:00', 'https://www.aibase.com/zh/news/4336');
INSERT INTO `news` VALUES (84, '微软Copilot独立，直起对标ChatGPT和文心一言？-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/12505.html');
INSERT INTO `news` VALUES (85, '微软Copilot进化完全体，代码解释器、DALL·E 3，ChatGPT有的它都有-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/11269.html');
INSERT INTO `news` VALUES (86, '微软Outlook推出基于AI个性化动态主题，根据天气和位置动态更新', '2024-12-21 19:31:00', 'https://www.aibase.com/zh/news/13088');
INSERT INTO `news` VALUES (87, '微软一夜吞噬估值40亿美金AI初创，2位联创加盟重点打造Copilot，还带走多数员工-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/16400.html');
INSERT INTO `news` VALUES (88, '微软上线AI助手Copilot，网友：又一个人工智障？-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/3049.html');
INSERT INTO `news` VALUES (89, '微软为小企业带来Copilot AI助手并推出面向个人的高端服务-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/13432.html');
INSERT INTO `news` VALUES (90, '微软再次跟进 OpenAI，推出 Copilot Pro 版本，用户能够构建自己的 GPT-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/13448.html');
INSERT INTO `news` VALUES (91, '微软再炸场，Copilot与Windows强悍集成，与OpenAI标准互通 ，开建AI超级生态-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/562.html');
INSERT INTO `news` VALUES (92, '微软发布 Windows Copilot，打造 Win11 人工智能“个人助理”-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/561.html');
INSERT INTO `news` VALUES (93, '微软围着Copilot 转！首款AI PC能算惊艳吗？网友：9分钟宣传片让人昏昏欲睡-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/16557.html');
INSERT INTO `news` VALUES (94, '微软如今有了Copilot，Cortana就将黯然出局-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/1459.html');
INSERT INTO `news` VALUES (95, '微软宣布为Copilot Studio推出新功能 帮助企业更便捷地构建和部署AI代理', '2024-12-21 19:31:00', 'https://www.aibase.com/zh/news/12590');
INSERT INTO `news` VALUES (96, '微软将在12月1日推出国内Web AI聊天功能Copilot-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/10653.html');
INSERT INTO `news` VALUES (97, '微软悄悄搞了个大事情！打造全球最大企业 AI 智能体生态系统', '2024-12-21 19:31:00', 'https://www.aibase.com/zh/news/13343');
INSERT INTO `news` VALUES (98, '微软推出 “AI 虚拟员工”，轻松应对客户咨询', '2024-12-21 19:31:00', 'https://www.aibase.com/zh/news/12616');
INSERT INTO `news` VALUES (99, '微软推出跨 Windows 11、必应、Edge 等的统一 Copilot AI 助手-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/7558.html');
INSERT INTO `news` VALUES (100, '微软深夜连甩三大炸弹！Bing Chat更名Copilot，自研芯片问世，还加入GPTs功能-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/10173.html');
INSERT INTO `news` VALUES (101, '微软目前统治copilots市场 但企业需要更多AI机器人助手-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/16541.html');
INSERT INTO `news` VALUES (102, '微软计划在Windows 11中通过AI替代经典快捷方式', '2024-12-21 19:31:00', 'https://www.aibase.com/zh/news/3896');
INSERT INTO `news` VALUES (103, '微软重申 AI 工具 Copilot 不会抢走你的工作-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/7559.html');
INSERT INTO `news` VALUES (104, '微软面向开发者扩展Copilot和插件生态系统-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/641.html');
INSERT INTO `news` VALUES (105, '手写100%代码的19年老程序员，拒绝使用Copilot、GPT-4工具后，惨遭淘汰、解雇-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/1543.html');
INSERT INTO `news` VALUES (106, '推出付费订阅Copilot Pro，微软也在琢磨用AI来挣钱-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/13552.html');
INSERT INTO `news` VALUES (107, '搞大模型巨亏，微软都还没挣到钱，GitHub Copilot每月收10刀，倒赔20-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/8246.html');
INSERT INTO `news` VALUES (108, '有了GPT+Copilot，学习 Rust 直接起飞-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/13053.html');
INSERT INTO `news` VALUES (109, '本周硅谷发生了什么？｜OpenAI遭纽约时报起诉；安卓版Copilot上线；英伟达推中国定制新显卡-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/12555.html');
INSERT INTO `news` VALUES (110, '消息称微软 GitHub Copilot 服务亏损惨重，将自制 AI 芯片挑战英伟达-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/8204.html');
INSERT INTO `news` VALUES (111, '纳德拉出席高通骁龙峰会，称 Copilot 将成为下个 Windows 开始按钮-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/8992.html');
INSERT INTO `news` VALUES (112, '追击OpenAI，微软深夜发布100+更新：人人定制Copilot，自研两款AI芯片 _ 焦点分析-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/10213.html');
INSERT INTO `news` VALUES (113, 'AI会爱上人类吗？ChatGPT的回答扎心了', '2024-12-21 19:31:00', 'https://www.aibase.com/zh/news/14050');
INSERT INTO `news` VALUES (114, 'ChatGPT iOS版更新：全面支持中文，带来更佳用户体验-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/18696.html');
INSERT INTO `news` VALUES (115, 'ChatGPT-4o，OpenAI的一小步，人类「AI助理」的一大步-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/18665.html');
INSERT INTO `news` VALUES (116, 'ChatGPT一天“吃”50万度电，AI热潮下美国上演电力“抢夺战”，核能、地热和燃料电池成新希望-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/17997.html');
INSERT INTO `news` VALUES (117, 'ChatGPT免费入驻WhatsApp，全球用户畅聊AI', '2024-12-21 19:31:00', 'https://www.aibase.com/zh/news/14111');
INSERT INTO `news` VALUES (118, 'ChatGPT升级为AI搜索引擎，开启智能搜索新篇章-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/19396.html');
INSERT INTO `news` VALUES (119, 'ChatGPT可以开车吗？分享大型语言模型在自动驾驶方面的应用案例-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/18099.html');
INSERT INTO `news` VALUES (120, 'ChatGPT安卓和macOS版支持Mentions功能,实现GPT模型无缝切换-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/19112.html');
INSERT INTO `news` VALUES (121, 'ChatGPT搜索引擎要来了，但它面临的麻烦还不少-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/18432.html');
INSERT INTO `news` VALUES (122, 'ChatGPT新增电话功能 老年机、座机也能与AI交流', '2024-12-21 19:31:00', 'https://www.aibase.com/zh/news/14085');
INSERT INTO `news` VALUES (123, 'ChatGPT本月更新_更智能、更个性化的AI伴侣体验-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/19284.html');
INSERT INTO `news` VALUES (124, 'ChatGPT桌面端新增应用协作功能 Mac用户轻松读取应用内容', '2024-12-21 19:31:00', 'https://www.aibase.com/zh/news/14130');
INSERT INTO `news` VALUES (125, 'ChatGPT登录iPhone，Siri引入“最强大脑”，能看图能识字，iOS 18必升-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/18603.html');
INSERT INTO `news` VALUES (126, 'ChatGPT系统故障引发关注，谷歌Gemini搜索量激增60%-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/18736.html');
INSERT INTO `news` VALUES (127, 'ChatGPT终于活成“Siri”本该有的样子-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/18667.html');
INSERT INTO `news` VALUES (128, 'ChatGPT这么会聊天，还要朋友干什么-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/18684.html');
INSERT INTO `news` VALUES (129, 'GPT-4 Turbo重回王座，ChatGPT免费升级，数学暴涨10%_上下文全面碾压-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/17467.html');
INSERT INTO `news` VALUES (130, 'GPT-4-Turbo 推出了正式版-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/17319.html');
INSERT INTO `news` VALUES (131, 'GPT-4一眼看穿论文会不会撤稿：7000篇实测准确率高达95%-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/17242.html');
INSERT INTO `news` VALUES (132, 'GPT-4整治学术不端！人大_浙大团队实测7000篇论文，撤稿预测与人类95%一致-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/17529.html');
INSERT INTO `news` VALUES (133, 'GPT-5研发受阻_OpenAI 新一代模型难见突破性进展', '2024-12-21 19:31:00', 'https://www.aibase.com/zh/news/14161');
INSERT INTO `news` VALUES (134, 'GPT-5：我们期待看到的4个新功能-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/17283.html');
INSERT INTO `news` VALUES (135, 'GPT之父离职震动AI圈_OpenAI传奇研究员Radford转向独立研究', '2024-12-21 19:31:00', 'https://www.aibase.com/zh/news/14126');
INSERT INTO `news` VALUES (136, 'OpenAI 向 ChatGPT Plus 用户开放“记忆”功能-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/18267.html');
INSERT INTO `news` VALUES (137, 'OpenAI 推出全新 ChatGPT Projects，集成多项实用工具', '2024-12-21 19:31:00', 'https://www.aibase.com/zh/news/13952');
INSERT INTO `news` VALUES (138, 'OpenAI 测试新版 GPT-4o：支持64K tokens输出，输入成本6美元_百万tokens，输出达18美元_百万tokens-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/18957.html');
INSERT INTO `news` VALUES (139, 'OpenAI 重磅发布的GPT-4 Turbo with Vision，是编码的倒退-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/17375.html');
INSERT INTO `news` VALUES (140, 'OpenAI也要做搜索？传SearchGPT将迎击谷歌核心业务！OpenAI与金融时报新协议已定，将进行链接和引用-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/18286.html');
INSERT INTO `news` VALUES (141, 'OpenAI于7月26日凌晨宣布正在测试新型搜索功能——SearchGPT-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/18923.html');
INSERT INTO `news` VALUES (142, 'OpenAI创始大神手搓千行C代码训练GPT，附PyTorch迁移教程-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/17243.html');
INSERT INTO `news` VALUES (143, 'OpenAI前算法负责人创立新公司，进军智能陪伴机器人领域', '2024-12-21 19:31:00', 'https://www.aibase.com/zh/news/13944');
INSERT INTO `news` VALUES (144, 'OpenAI发布ChatGPT宕机故障详细报告：只因一个小更改导致', '2024-12-21 19:31:00', 'https://www.aibase.com/zh/news/13990');
INSERT INTO `news` VALUES (145, 'OpenAI发布GPT-4o mini，标志着行业向更高效人工智能模型的转变-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/18904.html');
INSERT INTO `news` VALUES (146, 'OpenAI发布全能AI模型GPT-4o，AGI已来-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/18673.html');
INSERT INTO `news` VALUES (147, 'OpenAI宣布ChatGPT搜索升级 支持地图、高级语音等功能', '2024-12-21 19:31:00', 'https://www.aibase.com/zh/news/14000');
INSERT INTO `news` VALUES (148, 'OpenAI将发布ChatGPT搜索引擎，挑战谷歌搜索！-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/18456.html');
INSERT INTO `news` VALUES (149, 'OpenAI开放满血o1模型API：成本降低60% 新增高级视觉处理能力', '2024-12-21 19:31:00', 'https://www.aibase.com/zh/news/14040');
INSERT INTO `news` VALUES (150, 'OpenAI开源GPT-4稀疏自动编码器：提升大模型的可解释性与控制性-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/18744.html');
INSERT INTO `news` VALUES (151, 'OpenAI推出ChatGPT新记忆功能_能跨对话回忆用户交流', '2024-12-21 19:31:00', 'https://www.aibase.com/zh/news/14168');
INSERT INTO `news` VALUES (152, 'OpenAI推出GPT-4o mini，性能升级价格降低，免费赋能ChatGPT用户-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/18888.html');
INSERT INTO `news` VALUES (153, 'OpenAI新模型「草莓」即将亮相-被认为是ChatGPT今年重大升级之一-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/19096.html');
INSERT INTO `news` VALUES (154, 'OpenAI正式推出ChatGPT实时视频功能，兑现七个月前演示承诺-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/19553.html');
INSERT INTO `news` VALUES (155, 'OpenAI重磅更新ChatGPT桌面端，新增“与应用协作”功能助力Mac用户高效工作-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/19580.html');
INSERT INTO `news` VALUES (156, 'OpenAI颠覆世界：GPT-4o完全免费，实时语音视频交互震撼全场，直接进入科幻时代-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/18658.html');
INSERT INTO `news` VALUES (157, 'TikTok引入ChatGPT辅助搜索结果，提升用户体验-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/18692.html');
INSERT INTO `news` VALUES (158, 'Windows版ChatGPT正式发布，有望今年体验-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/19354.html');
INSERT INTO `news` VALUES (159, '「视觉版」GPT-4 Turbo重磅升级！ChatGPT 40条消息限制或取消-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/17297.html');
INSERT INTO `news` VALUES (160, '三小时内用ChatGPT写完一篇论文的终极指南-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/17232.html');
INSERT INTO `news` VALUES (161, '免费的GPT-4o足够强，但治不好OpenAI的产品焦虑-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/18654.html');
INSERT INTO `news` VALUES (162, '全球开发者用GPT4都在做什么？这28种方法值得一看-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/18368.html');
INSERT INTO `news` VALUES (163, '因生成错误信息，ChatGPT 在奥地利遭投诉-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/18247.html');
INSERT INTO `news` VALUES (164, '在试用过 ChatGPT 后，苹果决定为 Siri 进行大改造-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/18649.html');
INSERT INTO `news` VALUES (165, '奥特曼_剧透_OpenAI发布会：不是GPT-5，也不是搜索引擎 媒体爆料：是语音助手-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/18585.html');
INSERT INTO `news` VALUES (166, '奥特曼斯坦福演讲全场爆满，GPT-5强到发指，Scaling Law依然有效-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/18158.html');
INSERT INTO `news` VALUES (167, '奥特曼斯坦福演讲：专注当前AI局限性没用，GPT-5让一切努力过时-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/18127.html');
INSERT INTO `news` VALUES (168, '学术新助手：OpenAI发布ChatGPT学生写作指南，助力学生写作与研究-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/19451.html');
INSERT INTO `news` VALUES (169, '实测ChatGPT的Go能力！资深老鸟干货分享：使用ChatGPT学习Go语言容易得多-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/18582.html');
INSERT INTO `news` VALUES (170, '新南威尔士大学悉尼分校携手OpenAI推出安全版 ChatGPT Edu', '2024-12-21 19:31:00', 'https://www.aibase.com/zh/news/13994');
INSERT INTO `news` VALUES (171, '生成式AI模型大PK——GPT-4、Claude 2.1和Claude 3.0 Opus-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/18601.html');
INSERT INTO `news` VALUES (172, '终局之战！OpenAI Sora大佬专访：AI视频模型仍处在GPT-1时代-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/18176.html');
INSERT INTO `news` VALUES (173, '老黄亲自上门送超算！OpenAI奥特曼签收后到斯坦福演讲GPT-5-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/18092.html');
INSERT INTO `news` VALUES (174, '训出GPT-5短缺20万亿token！OpenAI被曝计划建「数据市场」-AITOP100,AI资讯', '2024-12-21 19:31:00', 'https://www.aitop100.cn/infomation/details/17215.html');
INSERT INTO `news` VALUES (175, '隐私违规！意大利对OpenAI ChatGP施以1500万欧元重罚', '2024-12-21 19:31:00', 'https://www.aibase.com/zh/news/14169');

-- ----------------------------
-- Table structure for news_comments
-- ----------------------------
DROP TABLE IF EXISTS `news_comments`;
CREATE TABLE `news_comments`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `news_id` int(0) NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `news_id`(`news_id`) USING BTREE,
  CONSTRAINT `news_comments_ibfk_1` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news_comments
-- ----------------------------
INSERT INTO `news_comments` VALUES (1, 101, '这篇新闻非常有启发性，值得一读！', '2024-12-23 10:00:00');
INSERT INTO `news_comments` VALUES (2, 102, '我不同意文章中的一些观点，但整体内容不错。', '2024-12-23 10:15:00');
INSERT INTO `news_comments` VALUES (3, 101, '写得很好，希望更多的新闻能够深入探讨这个话题。', '2024-12-23 10:30:00');
INSERT INTO `news_comments` VALUES (4, 103, '这篇文章的信息很全面，帮助我了解了很多新东西。', '2024-12-23 11:00:00');
INSERT INTO `news_comments` VALUES (5, 104, '非常期待下一篇相关的报道！', '2024-12-23 11:15:00');
INSERT INTO `news_comments` VALUES (6, 102, '希望作者能提供更多的数据支持，分析更有说服力。', '2024-12-23 11:30:00');
INSERT INTO `news_comments` VALUES (7, 105, '这篇报道让我对问题有了全新的认识！', '2024-12-23 12:00:00');
INSERT INTO `news_comments` VALUES (8, 106, '我觉得这篇文章写得比较片面，很多观点不太准确。', '2024-12-23 12:15:00');
INSERT INTO `news_comments` VALUES (9, 107, '很好，深入浅出，易于理解。', '2024-12-23 12:30:00');
INSERT INTO `news_comments` VALUES (10, 108, '希望能够看到更多关于这个话题的报道。', '2024-12-23 13:00:00');
INSERT INTO `news_comments` VALUES (11, 109, '文章的论点比较牵强，有待商榷。', '2024-12-23 13:15:00');
INSERT INTO `news_comments` VALUES (12, 110, '非常清晰地解释了问题的本质，谢谢作者！', '2024-12-23 13:30:00');
INSERT INTO `news_comments` VALUES (13, 111, '这篇新闻的背景非常有趣，期待更多的相关信息。', '2024-12-23 14:00:00');
INSERT INTO `news_comments` VALUES (14, 112, '信息量很大，但是文字略显枯燥。', '2024-12-23 14:15:00');
INSERT INTO `news_comments` VALUES (15, 113, '希望能有更多的数据支持，文章会更加有说服力。', '2024-12-23 14:30:00');
INSERT INTO `news_comments` VALUES (16, 114, '这篇文章让我对科技行业有了更多的了解！', '2024-12-23 15:00:00');
INSERT INTO `news_comments` VALUES (17, 115, '非常专业的分析，读后受益匪浅。', '2024-12-23 15:15:00');
INSERT INTO `news_comments` VALUES (18, 116, '作者的结论有些偏激，需要更深入的讨论。', '2024-12-23 15:30:00');
INSERT INTO `news_comments` VALUES (19, 117, '这是我看到的最全面的报道之一，赞一个！', '2024-12-23 16:00:00');
INSERT INTO `news_comments` VALUES (20, 118, '没有看到相关的实地调查数据，显得有些薄弱。', '2024-12-23 16:15:00');
INSERT INTO `news_comments` VALUES (21, 119, '很有意思的角度，值得探讨。', '2024-12-23 16:30:00');
INSERT INTO `news_comments` VALUES (22, 120, '这篇文章给了我很多灵感，感谢作者！', '2024-12-23 17:00:00');
INSERT INTO `news_comments` VALUES (23, 121, '写得不错，但是可以再增加一些案例分析。', '2024-12-23 17:15:00');
INSERT INTO `news_comments` VALUES (24, 122, '这篇新闻没有太多新意，缺乏深度。', '2024-12-23 17:30:00');
INSERT INTO `news_comments` VALUES (25, 123, '内容充实，很有价值！', '2024-12-23 18:00:00');
INSERT INTO `news_comments` VALUES (26, 124, '希望作者能够更详细地解释一下观点。', '2024-12-23 18:15:00');
INSERT INTO `news_comments` VALUES (27, 125, '很高兴看到这篇文章，符合我对这个话题的兴趣。', '2024-12-23 18:30:00');
INSERT INTO `news_comments` VALUES (28, 126, '非常好，结构清晰，内容有条理。', '2024-12-23 19:00:00');
INSERT INTO `news_comments` VALUES (29, 127, '感觉分析得不够深入，希望有更丰富的讨论。', '2024-12-23 19:15:00');
INSERT INTO `news_comments` VALUES (30, 128, '这篇文章的写作风格非常好，阅读起来很顺畅。', '2024-12-23 19:30:00');
INSERT INTO `news_comments` VALUES (31, 129, '观点很新颖，让人耳目一新。', '2024-12-23 20:00:00');
INSERT INTO `news_comments` VALUES (32, 130, '文章中的一些数据看起来不太准确，需要核实。', '2024-12-23 20:15:00');
INSERT INTO `news_comments` VALUES (33, 131, '非常详细的分析，值得反复阅读。', '2024-12-23 20:30:00');
INSERT INTO `news_comments` VALUES (34, 132, '总体不错，文章结构可以再优化一下。', '2024-12-23 21:00:00');
INSERT INTO `news_comments` VALUES (35, 133, '写得很棒，对我帮助很大！', '2024-12-23 21:15:00');
INSERT INTO `news_comments` VALUES (36, 134, '需要更多来自专家的意见。', '2024-12-23 21:30:00');
INSERT INTO `news_comments` VALUES (37, 135, '内容有点枯燥，如果能增加一些案例会更好。', '2024-12-23 22:00:00');
INSERT INTO `news_comments` VALUES (38, 136, '对比其他报道，这篇文章的信息更全面。', '2024-12-23 22:15:00');
INSERT INTO `news_comments` VALUES (39, 137, '论点虽然有道理，但缺乏足够的论据支撑。', '2024-12-23 22:30:00');
INSERT INTO `news_comments` VALUES (40, 138, '文章中的观点非常独特，值得思考。', '2024-12-23 23:00:00');
INSERT INTO `news_comments` VALUES (41, 139, '如果能结合更多实例，文章的说服力会更强。', '2024-12-23 23:15:00');
INSERT INTO `news_comments` VALUES (42, 140, '我很喜欢这篇文章的深入分析。', '2024-12-23 23:30:00');
INSERT INTO `news_comments` VALUES (43, 141, '不错，不过希望能更加客观，避免偏见。', '2024-12-24 00:00:00');
INSERT INTO `news_comments` VALUES (44, 142, '内容不够丰富，希望作者能再补充一些细节。', '2024-12-24 00:15:00');
INSERT INTO `news_comments` VALUES (45, 143, '很好，尤其在背景部分，做得很详细。', '2024-12-24 00:30:00');
INSERT INTO `news_comments` VALUES (46, 144, '作者的视角很新颖，给了我很多启发。', '2024-12-24 01:00:00');
INSERT INTO `news_comments` VALUES (47, 145, '缺乏具体的例子，论证有些薄弱。', '2024-12-24 01:15:00');
INSERT INTO `news_comments` VALUES (48, 146, '写得不错，希望能看到更多这样的文章。', '2024-12-24 01:30:00');
INSERT INTO `news_comments` VALUES (49, 147, '这篇新闻的质量很高，推荐大家阅读。', '2024-12-24 02:00:00');
INSERT INTO `news_comments` VALUES (50, 148, '有些部分写得比较模糊，希望能更加明确。', '2024-12-24 02:15:00');
INSERT INTO `news_comments` VALUES (51, 149, '整篇文章让我重新思考了这个问题，很有价值。', '2024-12-24 02:30:00');
INSERT INTO `news_comments` VALUES (52, 150, '写得很流畅，内容清晰，容易理解。', '2024-12-24 03:00:00');
INSERT INTO `news_comments` VALUES (53, 151, '我觉得应该更深入地分析文章中的一些细节。', '2024-12-24 03:15:00');
INSERT INTO `news_comments` VALUES (54, 152, '很高兴能看到这篇文章，对我的研究有帮助。', '2024-12-24 03:30:00');
INSERT INTO `news_comments` VALUES (55, 153, '可以再多加一些数据，证明观点更有力。', '2024-12-24 04:00:00');
INSERT INTO `news_comments` VALUES (56, 154, '内容不错，但语言表达上可以再简洁一些。', '2024-12-24 04:15:00');

-- ----------------------------
-- Table structure for news_likes
-- ----------------------------
DROP TABLE IF EXISTS `news_likes`;
CREATE TABLE `news_likes`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `news_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `news_id`(`news_id`) USING BTREE,
  CONSTRAINT `news_likes_ibfk_1` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news_likes
-- ----------------------------
INSERT INTO `news_likes` VALUES (1, 1);
INSERT INTO `news_likes` VALUES (6, 1);
INSERT INTO `news_likes` VALUES (10, 1);
INSERT INTO `news_likes` VALUES (2, 2);
INSERT INTO `news_likes` VALUES (7, 2);
INSERT INTO `news_likes` VALUES (3, 3);
INSERT INTO `news_likes` VALUES (4, 4);
INSERT INTO `news_likes` VALUES (8, 4);
INSERT INTO `news_likes` VALUES (5, 5);
INSERT INTO `news_likes` VALUES (9, 5);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `auth_key` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `password_hash` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` smallint(0) NOT NULL DEFAULT 10,
  `created_at` int(0) NOT NULL,
  `updated_at` int(0) NOT NULL,
  `verification_token` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE,
  UNIQUE INDEX `email`(`email`) USING BTREE,
  UNIQUE INDEX `password_reset_token`(`password_reset_token`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'ZZB', 'sf40BEXyLmF7BMZ6oCGIsS2dIMotLTih', '$2y$13$3qiNd0IHX/BFzMMJ9sjXhu0aSrTsUKWuGDPuMP9rUFUfIyX3UjGAO', NULL, '2994759478@qq.com', 10, 1729163062, 1729163062, 'cnPM_0lUd-44aJAzrJktKaKyGMJYMgSC_1729163062');
INSERT INTO `user` VALUES (2, 'ZZB_yii', '7nyJnkeSKiddXiRuRhZ6BZSM03WFpy8A', '$2y$13$U4yV1IsNYF7.2tK/g5CrB.OlKA08VPrJSO9ahORTGfA8hMOgOwr5C', NULL, 'zzb0472@gmail.com', 10, 1729163221, 1729163221, 'm8DuebcHvOEqqCklG5l9NqohmfpZyhnN_1729163221');
INSERT INTO `user` VALUES (3, 'admin', 'WY9S54y0lHczKUWd4muOdLcnRMmo4wlI', '$2y$13$O4qcmU7CxAcTASOAxdVCn.0L4ojiTY3Ubj/a8ZygUBuX8rR5.MOcG', NULL, '2984759478@qq.com', 10, 1734669984, 1734669984, 'sF3oyT4QyAlMb7UrJ94ve6yP-HdZt5FL_1734669984');

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `cover_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES (1, '国产AI大乱斗', '1-16家国产AI大模型大乱斗，最好用的竟然是-480P 清晰-AVC', '/advanced/frontend/web/videos/video1.mp4', '/videos/covers/video1.png', '2024-12-11 15:56:34');
INSERT INTO `video` VALUES (2, '一口气入门AI', '2-一口气入门AI视频：3大主流路径与30个热门工具，全面分析AI做视频的各种技巧！   AI视频生成入门教程&软件盘点：图生视频、转绘、二创拥抱整活、数字人 …-480P 清晰-AVC', '/advanced/frontend/web/videos/video2.mp4', '/videos/covers/video2.png', '2024-12-11 15:56:34');
INSERT INTO `video` VALUES (3, '大模型深度测试', '4-万字测评！18个主流大模型深度评测，读懂AI现状【深度模评01】-480P 清晰-AVC', '/advanced/frontend/web/videos/video3.mp4', '/videos/covers/video3.png', '2024-12-11 15:56:34');
INSERT INTO `video` VALUES (4, '九大AI工具', '10-2024 年最好用的九大 AI 工具！免费且强大 ！【AI 合集推荐】-480P 清晰-AVC.mp4', '/advanced/frontend/web/videos/video4.mp4', '/videos/covers/video4.png', '2024-12-20 15:54:43');
INSERT INTO `video` VALUES (5, '视频最强工具', '11-AI 视频最强工具！免费白嫖的快手可灵保姆级教程！轻松创造百万爆款视频   中国版 Sora   新手友好-480P 清晰-AVC', '/advanced/frontend/web/videos/video5.mp4', '/videos/covers/video5.png', '2024-12-20 15:54:49');
INSERT INTO `video` VALUES (6, '全球最强AI神器', '12-全球最强AI神器！集齐GPT-4o、SD等最强AI文本图像视频工具   Poe保姆级教程｜新手友好-480P 清晰-AVC', '/advanced/frontend/web/videos/video6.mp4', '/videos/covers/video6.png', '2024-12-20 15:54:55');
INSERT INTO `video` VALUES (7, '最好用的6大AI工具', '18-2024最好用的六大AI视频工具！免费且强到离谱！-480P 清晰-AVC', '/advanced/frontend/web/videos/video7.mp4', '/videos/covers/video7.png', '2024-12-20 15:56:21');
INSERT INTO `video` VALUES (8, '神仙打架', '20-神仙打架！2024年九款最强AI大语言模型年度大盘点-480P 清晰-AVC', '/advanced/frontend/web/videos/video8.mp4', '/videos/covers/video8.png', '2024-12-23 17:10:49');
INSERT INTO `video` VALUES (9, 'AI模型实测的对比', '27-三大AI模型实测对比-480P 清晰-AVC', '/advanced/frontend/web/videos/video9.mp4', '/videos/covers/video9.png', '2024-12-23 17:10:56');
INSERT INTO `video` VALUES (10, 'AI绘画工具', '41-三款主流AI绘画工具Midjourney Stable diffusion DALL-E3优劣势对比-480P 清晰-AVC', '/advanced/frontend/web/videos/video10.mp4', '/videos/covers/video10.png', '2024-12-23 17:11:08');

-- ----------------------------
-- Table structure for video_comment
-- ----------------------------
DROP TABLE IF EXISTS `video_comment`;
CREATE TABLE `video_comment`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `video_id` int(0) NOT NULL,
  `user_id` int(0) NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `video_id`(`video_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  CONSTRAINT `video_comment_ibfk_1` FOREIGN KEY (`video_id`) REFERENCES `video` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `video_comment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of video_comment
-- ----------------------------
INSERT INTO `video_comment` VALUES (1, 1, 1, '很棒的视频，令我的gpt旋转', '2024-12-23 14:28:08');
INSERT INTO `video_comment` VALUES (2, 2, 1, '很棒的视频，令我的gpt旋转', '2024-12-23 19:12:15');
INSERT INTO `video_comment` VALUES (3, 3, 1, '很棒的视频，令我的gpt旋转', '2024-12-23 19:12:32');
INSERT INTO `video_comment` VALUES (4, 4, 1, '很棒的视频，令我的gpt旋转', '2024-12-23 19:13:05');
INSERT INTO `video_comment` VALUES (5, 5, 1, '很棒的视频，令我的gpt旋转', '2024-12-23 19:13:17');
INSERT INTO `video_comment` VALUES (6, 6, 1, '很棒的视频，令我的gpt旋转', '2024-12-23 19:13:28');
INSERT INTO `video_comment` VALUES (7, 7, 1, '很棒的视频，令我的gpt旋转', '2024-12-23 19:13:37');
INSERT INTO `video_comment` VALUES (8, 8, 1, '很棒的视频，令我的gpt旋转', '2024-12-23 19:13:46');
INSERT INTO `video_comment` VALUES (9, 9, 1, '很棒的视频，令我的gpt旋转', '2024-12-23 19:13:53');
INSERT INTO `video_comment` VALUES (10, 10, 1, '很棒的视频，令我的gpt旋转', '2024-12-23 19:14:03');

-- ----------------------------
-- Table structure for video_like
-- ----------------------------
DROP TABLE IF EXISTS `video_like`;
CREATE TABLE `video_like`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `video_id` int(0) NOT NULL,
  `user_id` int(0) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `video_id`(`video_id`, `user_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  CONSTRAINT `video_like_ibfk_1` FOREIGN KEY (`video_id`) REFERENCES `video` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `video_like_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of video_like
-- ----------------------------
INSERT INTO `video_like` VALUES (1, 6, 1, '2024-12-23 14:27:58');
INSERT INTO `video_like` VALUES (3, 7, 1, '2024-12-23 14:41:43');
INSERT INTO `video_like` VALUES (6, 2, 1, '2024-12-23 16:47:11');
INSERT INTO `video_like` VALUES (7, 1, 1, '2024-12-23 16:58:10');
INSERT INTO `video_like` VALUES (9, 4, 1, '2024-12-23 19:07:48');
INSERT INTO `video_like` VALUES (10, 5, 3, '2024-12-23 19:33:01');

SET FOREIGN_KEY_CHECKS = 1;
