import Image from "next/image";

export default function DeveloperScene() {
  return <figure className="developer-scene">
    <div className="scene-caption"><span>THE PERSON BEHIND THE CODE</span><span>EP. 01</span></div>
    <div className="scene-photo">
      <Image src="/images/profile.webp" alt="Himanshu Choudhary outdoors in the snow" fill sizes="(max-width: 700px) 90vw, (max-width: 1000px) 44vw, 520px" preload />
    </div>
    <figcaption className="scene-footer"><span>Himanshu Choudhary</span><span>FLUTTER DEVELOPER</span></figcaption>
    <span className="scene-sticker">Hey, I’m<br/><strong>Himanshu!</strong></span>
  </figure>;
}
