import 'package:flutter/material.dart';

import '../constants.dart' show AppColors;

class Book {
  const Book({
    this.update_time,
    this.last_chapter_id,
    this.comic_status,
    this.comic_id,
    this.comic_hot,
    this.comic_local_collec,
    this.comic_name,
    this.comic_shoucang,
    this.last_chapter_name,
    this.comic_cover,
    this.comic_author,
    this.comic_desc,
  });

  final int update_time;
  final String last_chapter_id;
  final int comic_status;
  final int comic_id;
  final int comic_hot;
  final int comic_local_collec;
  final String comic_name;
  final int comic_shoucang;
  final String last_chapter_name;
  final String comic_cover;
  final String comic_author;
  final String comic_desc;
}

const List<Book> mockBook = [
  const Book(
      update_time: 1548547202,
      last_chapter_id: "737",
      comic_status: 1,
      comic_id: 25934,
      comic_hot: 97083233037,
      comic_local_collec: 0,
      comic_name: "斗破苍穹",
      comic_shoucang: 15210201,
      last_chapter_name: "第737话 火菩丹（中）",
      comic_cover: "http://image.mhxk.com/mh/25934.jpg-600x800.jpg.webp",
      comic_author: "知音动漫",
      comic_desc: "斗破苍穹漫画是根据著名作家天蚕土豆作品斗破苍穹改编的漫画，这是一个属于斗气的世界，没有花俏艳丽的魔法，有的，仅仅是繁衍到巅峰的斗气！在斗气大陆上，真正的强者都是用实力说话的！"
  ),
  const Book(
      update_time: 1548646722,
      last_chapter_id: "622",
      comic_status: 1,
      comic_id: 25933,
      comic_hot: 46055684715,
      comic_local_collec: 0,
      comic_name: "斗罗大陆",
      comic_shoucang: 12835559,
      last_chapter_name: "第622话 海神之光2",
      comic_cover: "http://image.mhxk.com/mh/25933.jpg-600x800.jpg.webp",
      comic_author: "风炫动漫",
      comic_desc: "应版权方要求，本漫画不参与免费卡的活动。偷学一身绝世功夫，最后却选择了跳崖明志，造化弄人，转世后却依然是令人艳羡的正太一枚；两世生涯中，唐三经历了怎样的人生？第二世中，他天生双武魂，先天满魂力，却一度被人认为是废武魂……在诺丁学院，遇到了野蛮可爱的萝莉小舞，血雨腥风儿女情更长。斗罗大陆漫画持续更新中，喜欢就分享给你的朋友们吧！"
  ),
  const Book(
      update_time: 1548677734,
      last_chapter_id: "443",
      comic_status: 1,
      comic_id: 7119,
      comic_hot: 52495479326,
      comic_local_collec: 0,
      comic_name: "绝世唐门",
      comic_shoucang: 10906449,
      last_chapter_name: "第443话 赌约2",
      comic_cover: "http://image.mhxk.com/mh/7119.jpg-600x800.jpg.webp",
      comic_author: "神漫",
      comic_desc: "唐门创立万年之后的斗罗大陆上，唐门式微，一代天骄霍雨浩横空出世，在霍雨浩与自己的伙伴不断努力，使得唐门重新发扬光大的故事。"
  ),
  const Book(
      update_time: 1548677734,
      last_chapter_id: "443",
      comic_status: 1,
      comic_id: 7119,
      comic_hot: 52495479326,
      comic_local_collec: 0,
      comic_name: "凤逆天下",
      comic_shoucang: 10906449,
      last_chapter_name: "第443话 赌约2",
      comic_cover: "http://image.mhxk.com/mh/17745.jpg-600x800.jpg.webp",
      comic_author: "神漫",
      comic_desc: "唐门创立万年之后的斗罗大陆上，唐门式微，一代天骄霍雨浩横空出世，在霍雨浩与自己的伙伴不断努力，使得唐门重新发扬光大的故事。"
  ),
  const Book(
      update_time: 1548677734,
      last_chapter_id: "443",
      comic_status: 1,
      comic_id: 7119,
      comic_hot: 52495479326,
      comic_local_collec: 0,
      comic_name: "凤逆天下",
      comic_shoucang: 10906449,
      last_chapter_name: "第443话 赌约2",
      comic_cover: "http://image.mhxk.com/mh/17745.jpg-600x800.jpg.webp",
      comic_author: "神漫",
      comic_desc: "唐门创立万年之后的斗罗大陆上，唐门式微，一代天骄霍雨浩横空出世，在霍雨浩与自己的伙伴不断努力，使得唐门重新发扬光大的故事。"
  ),
  const Book(
      update_time: 1548677734,
      last_chapter_id: "443",
      comic_status: 1,
      comic_id: 7119,
      comic_hot: 52495479326,
      comic_local_collec: 0,
      comic_name: "皇帝的独生女",
      comic_shoucang: 10906449,
      last_chapter_name: "第443话 赌约2",
      comic_cover: "http://image.mhxk.com/mh/100144.jpg-600x800.jpg.webp",
      comic_author: "神漫",
      comic_desc: "唐门创立万年之后的斗罗大陆上，唐门式微，一代天骄霍雨浩横空出世，在霍雨浩与自己的伙伴不断努力，使得唐门重新发扬光大的故事。"
  ),
  const Book(
      update_time: 1548677734,
      last_chapter_id: "443",
      comic_status: 1,
      comic_id: 7119,
      comic_hot: 52495479326,
      comic_local_collec: 0,
      comic_name: "武动乾坤",
      comic_shoucang: 10906449,
      last_chapter_name: "第443话 赌约2",
      comic_cover:  "http://image.mhxk.com/mh/5324.jpg-600x800.jpg.webp",
      comic_author: "神漫",
      comic_desc: "唐门创立万年之后的斗罗大陆上，唐门式微，一代天骄霍雨浩横空出世，在霍雨浩与自己的伙伴不断努力，使得唐门重新发扬光大的故事。"
  ),
  const Book(
      update_time: 1548677734,
      last_chapter_id: "443",
      comic_status: 1,
      comic_id: 7119,
      comic_hot: 52495479326,
      comic_local_collec: 0,
      comic_name: "神印王座",
      comic_shoucang: 10906449,
      last_chapter_name: "第443话 赌约2",
      comic_cover: "http://image.mhxk.com/mh/5323.jpg-600x800.jpg.webp",
      comic_author: "神漫",
      comic_desc: "唐门创立万年之后的斗罗大陆上，唐门式微，一代天骄霍雨浩横空出世，在霍雨浩与自己的伙伴不断努力，使得唐门重新发扬光大的故事。"
  ),
  const Book(
      update_time: 1548677734,
      last_chapter_id: "443",
      comic_status: 1,
      comic_id: 7119,
      comic_hot: 52495479326,
      comic_local_collec: 0,
      comic_name: "风起苍岚",
      comic_shoucang: 10906449,
      last_chapter_name: "第443话 赌约2",
      comic_cover: "http://image.mhxk.com/mh/9680.jpg-600x800.jpg.webp",
      comic_author: "神漫",
      comic_desc: "唐门创立万年之后的斗罗大陆上，唐门式微，一代天骄霍雨浩横空出世，在霍雨浩与自己的伙伴不断努力，使得唐门重新发扬光大的故事。"
  )
];