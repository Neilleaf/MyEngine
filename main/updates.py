from main.models import gameinfo

# gameinfo.objects.update_or_create(
#     title="Marvel's Spider-Man 2",  # Match by title
#     defaults={
#         "video_url":"https://www.youtube.com/embed/nq1M_Wc4FIc?si=swZgTGFA1bgN3gWw"
#     }
# )
# gameinfo.objects.update_or_create(
#     title="Elden Ring",  # Match by title
#     defaults={
#         "genre":"Souls-like Open-World Fantasy Adventure RPG Action Multiplayer Singleplayer Online Co-Op PvP Nonlinear"
#     }
# )
gameinfo.objects.update_or_create(
    title="Road 96",  # Match by title
    defaults={
        "image":"images/road962.jpeg"
    }
)

