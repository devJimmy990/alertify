// import 'package:news_app/model/model.news.dart';
import 'package:news_app/model/model.story.dart';

List<Stroy> lstStory = [
 Stroy(  
      title: "general",
      imgSrc:
          "https://th.bing.com/th/id/OIP.J0fFEWL9ojxtpcOEQXixIwHaHa?pid=ImgDet&w=187&h=187&c=7&dpr=1.5"),
  Stroy(  
      title: "business",
      imgSrc:
          "https://th.bing.com/th/id/OIP.J0fFEWL9ojxtpcOEQXixIwHaHa?pid=ImgDet&w=187&h=187&c=7&dpr=1.5"),
  Stroy(
      title: "entertainment",
      imgSrc:
          "https://th.bing.com/th/id/OIP.MCmM1b-hj0SntnEkvZNAnwAAAA?rs=1&pid=ImgDetMain"),
  Stroy(
      title: "technology",
      imgSrc:
          "https://www.esa.int/var/esa/storage/images/esa_multimedia/images/2017/11/autumn_fireball/17255671-1-eng-GB/Autumn_fireball.jpg"),
  Stroy(
      title: "sports",
      imgSrc:
          "https://th.bing.com/th/id/R.385e7dbec0e6c313cfd6dc3b6fff1c95?rik=Ps5ZHpTWtX4y3A&pid=ImgRaw&r=0"),
  Stroy(
      title: "health",
      imgSrc:
          "https://th.bing.com/th/id/OIP.Z_PIeIRDajXPmZHROt-T_QHaEK?rs=1&pid=ImgDetMain"),
  Stroy(
      title: "science",
      imgSrc:
          "https://engeniusweb.com/wp-content/uploads/2017/12/Web-Designer-at-Engenius.jpg"),
   ];
// List<News> lstNews = [
//   News(
//       title:
//           "Elon Musk's Neuralink brain implant to ultimately help humans merge with AI is sparking debate over safety and ethics",
//       subTitle:
//           "Elon Musk's Neuralink implanted a brain chip in its first human patient in January of 2024, and is recruiting others to participate in its first human trial. NurPhoto/Getty Images Elon Musk's brain chip company Neuralink has begun implanting its devices in hu…",
//       imgSrc: "https://c.biztoc.com/p/5134610af1c02e3e/s.webp"),
//   News(
//       title:
//           "Elon Musk's Neuralink brain implant to ultimately help humans merge with AI is sparking debate over safety and ethics",
//       subTitle:
//           "Elon Musk's Neuralink implanted a brain chip in its first human patient in January of 2024, and is recruiting others to participate in its first human trial. NurPhoto/Getty Images Elon Musk's brain chip company Neuralink has begun implanting its devices in hu…",
//       imgSrc: "https://c.biztoc.com/p/5134610af1c02e3e/s.webp"),
//   News(
//       title:
//           "Elon Musk's Neuralink brain implant to ultimately help humans merge with AI is sparking debate over safety and ethics",
//       subTitle:
//           "Elon Musk's Neuralink implanted a brain chip in its first human patient in January of 2024, and is recruiting others to participate in its first human trial. NurPhoto/Getty Images Elon Musk's brain chip company Neuralink has begun implanting its devices in hu…",
//       imgSrc: "https://c.biztoc.com/p/5134610af1c02e3e/s.webp"),
//   News(
//       title:
//           "Elon Musk's Neuralink brain implant to ultimately help humans merge with AI is sparking debate over safety and ethics",
//       subTitle:
//           "Elon Musk's Neuralink implanted a brain chip in its first human patient in January of 2024, and is recruiting others to participate in its first human trial. NurPhoto/Getty Images Elon Musk's brain chip company Neuralink has begun implanting its devices in hu…",
//       imgSrc: "https://c.biztoc.com/p/5134610af1c02e3e/s.webp"),
//   News(
//       title:
//           "Elon Musk's Neuralink brain implant to ultimately help humans merge with AI is sparking debate over safety and ethics",
//       subTitle:
//           "Elon Musk's Neuralink implanted a brain chip in its first human patient in January of 2024, and is recruiting others to participate in its first human trial. NurPhoto/Getty Images Elon Musk's brain chip company Neuralink has begun implanting its devices in hu…",
//       imgSrc: "https://c.biztoc.com/p/5134610af1c02e3e/s.webp"),
//   News(
//       title:
//           "Elon Musk's Neuralink brain implant to ultimately help humans merge with AI is sparking debate over safety and ethics",
//       subTitle:
//           "Elon Musk's Neuralink implanted a brain chip in its first human patient in January of 2024, and is recruiting others to participate in its first human trial. NurPhoto/Getty Images Elon Musk's brain chip company Neuralink has begun implanting its devices in hu…",
//       imgSrc: "https://c.biztoc.com/p/5134610af1c02e3e/s.webp"),
//   News(
//       title:
//           "Elon Musk's Neuralink brain implant to ultimately help humans merge with AI is sparking debate over safety and ethics",
//       subTitle:
//           "Elon Musk's Neuralink implanted a brain chip in its first human patient in January of 2024, and is recruiting others to participate in its first human trial. NurPhoto/Getty Images Elon Musk's brain chip company Neuralink has begun implanting its devices in hu…",
//       imgSrc: "https://c.biztoc.com/p/5134610af1c02e3e/s.webp"),
//   News(
//       title:
//           "Elon Musk's Neuralink brain implant to ultimately help humans merge with AI is sparking debate over safety and ethics",
//       subTitle:
//           "Elon Musk's Neuralink implanted a brain chip in its first human patient in January of 2024, and is recruiting others to participate in its first human trial. NurPhoto/Getty Images Elon Musk's brain chip company Neuralink has begun implanting its devices in hu…",
//       imgSrc: "https://c.biztoc.com/p/5134610af1c02e3e/s.webp"),
//   News(
//       title:
//           "Elon Musk's Neuralink brain implant to ultimately help humans merge with AI is sparking debate over safety and ethics",
//       subTitle:
//           "Elon Musk's Neuralink implanted a brain chip in its first human patient in January of 2024, and is recruiting others to participate in its first human trial. NurPhoto/Getty Images Elon Musk's brain chip company Neuralink has begun implanting its devices in hu…",
//       imgSrc: "https://c.biztoc.com/p/5134610af1c02e3e/s.webp"),
//   News(
//       title:
//           "Elon Musk's Neuralink brain implant to ultimately help humans merge with AI is sparking debate over safety and ethics",
//       subTitle:
//           "Elon Musk's Neuralink implanted a brain chip in its first human patient in January of 2024, and is recruiting others to participate in its first human trial. NurPhoto/Getty Images Elon Musk's brain chip company Neuralink has begun implanting its devices in hu…",
//       imgSrc: "https://c.biztoc.com/p/5134610af1c02e3e/s.webp"),
//   News(
//       title:
//           "Elon Musk's Neuralink brain implant to ultimately help humans merge with AI is sparking debate over safety and ethics",
//       subTitle:
//           "Elon Musk's Neuralink implanted a brain chip in its first human patient in January of 2024, and is recruiting others to participate in its first human trial. NurPhoto/Getty Images Elon Musk's brain chip company Neuralink has begun implanting its devices in hu…",
//       imgSrc: "https://c.biztoc.com/p/5134610af1c02e3e/s.webp"),
//   News(
//       title:
//           "Elon Musk's Neuralink brain implant to ultimately help humans merge with AI is sparking debate over safety and ethics",
//       subTitle:
//           "Elon Musk's Neuralink implanted a brain chip in its first human patient in January of 2024, and is recruiting others to participate in its first human trial. NurPhoto/Getty Images Elon Musk's brain chip company Neuralink has begun implanting its devices in hu…",
//       imgSrc: "https://c.biztoc.com/p/5134610af1c02e3e/s.webp"),
//   News(
//       title:
//           "Elon Musk's Neuralink brain implant to ultimately help humans merge with AI is sparking debate over safety and ethics",
//       subTitle:
//           "Elon Musk's Neuralink implanted a brain chip in its first human patient in January of 2024, and is recruiting others to participate in its first human trial. NurPhoto/Getty Images Elon Musk's brain chip company Neuralink has begun implanting its devices in hu…",
//       imgSrc: "https://c.biztoc.com/p/5134610af1c02e3e/s.webp"),
//   News(
//       title:
//           "Elon Musk's Neuralink brain implant to ultimately help humans merge with AI is sparking debate over safety and ethics",
//       subTitle:
//           "Elon Musk's Neuralink implanted a brain chip in its first human patient in January of 2024, and is recruiting others to participate in its first human trial. NurPhoto/Getty Images Elon Musk's brain chip company Neuralink has begun implanting its devices in hu…",
//       imgSrc: "https://c.biztoc.com/p/5134610af1c02e3e/s.webp")
// ];
