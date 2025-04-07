from main.models import gameinfo

gameinfo.objects.create(
    title="Road 96",
    release_date = "2021-08-16",
    description="Summer 1996, Today is the day! You hit the road. Adventure. Freedom. Escape. Run. Flee the Regime. Try to survive. On this risky road trip to the border, you'll meet incredible characters, and discover their intertwined stories and secrets in an ever-evolving adventure. But every mile opens up a choice to make. Your decisions will change your adventure, change the people you meet, maybe even change the world. There are thousands of roads across the authoritarian nation of Petria. Which one will you take?",
    video_url="https://www.youtube.com/embed/KEBkjL31Avw?si=99vGZS_-c7BnO0t1",
    genre="Adventure Choice-based Singleplayer Action Nonlinear",
    image="images/road96.jpeg",
    topurch="https://store.steampowered.com/app/1466640/Road_96/",
    walk="https://youtu.be/uFz-HWKSYbQ?si=EY6gJ1Wd-vQyWEGN",
    sys_req="MINIMUM: OS: Windows 10 Processor: Intel Core i5 4460 or AMD Ryzen 3 2300U Memory: 8 GB RAM Graphics: NVIDIA GTX 1060 or AMD RX 5700 DirectX: Version 11 Storage: 15 GB available space Additional Notes: Road 96 does not support Intel Xe graphic chipset. The game needs a dedicated GPU in order to run correctly.",
    developer="Digixart",
    publisher="Deep Silver",
    summary="Hitchhike your way to freedom in this crazy procedurally generated road trip. No one's road is the same!" 
)
gameinfo.objects.create(
    title="DARK SOULS III",
    release_date = "2016-04-11",
    description="As fires fade and the world falls into ruin, journey into a universe filled with more colossal enemies and environments. Players will be immersed into a world of epic atmosphere and darkness through faster gameplay and amplified combat intensity. Fans and newcomers alike will get lost in the game hallmark rewarding gameplay and immersive graphics.Now only embers remain… Prepare yourself once more and Embrace The Darkness!",
    video_url="https://www.youtube.com/embed/_zDZYrIUgKE?si=svMbXaD8O27XjXch",
    genre="Souls-like Fantasy RPG Action Co-op Adventure Multiplayer PvP Open-World Singleplayer",
    image="images/ds3.jpeg",
    topurch="https://store.steampowered.com/app/374320/DARK_SOULS_III/",
    walk="https://youtube.com/playlist?list=PL7RtZMiaOk8gqctsEgBQ9IhQAnm_P5ILT&si=aZcn5gjtw-YjuLX8",
    sys_req="MINIMUM: OS *: Windows 7 SP1 64bit, Windows 8.1 64bit Windows 10 64bit Processor: Intel Core i3-2100 / AMD® FX-6300 Memory: 4 GB RAM Graphics: NVIDIA® GeForce GTX 750 Ti / ATI Radeon HD 7950 DirectX: Version 11 Network: Broadband Internet connection Storage: 25 GB available space Sound Card: DirectX 11 sound device Additional Notes: Internet connection required for online play and product activation",
    developer="FromSoftware, Inc.",
    publisher="FromSoftware, Inc., Bandai Namco Entertainment",
    summary="Dark Souls continues to push the boundaries with the latest, ambitious chapter in the critically-acclaimed and genre-defining series. Prepare yourself and Embrace The Darkness!" 
)
