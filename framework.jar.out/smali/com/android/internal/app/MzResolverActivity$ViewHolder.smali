.class Lcom/android/internal/app/MzResolverActivity$ViewHolder;
.super Ljava/lang/Object;
.source "MzResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/MzResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field public icon:Landroid/widget/ImageView;

.field public text:Landroid/widget/TextView;

.field public text2:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

<<<<<<< HEAD
    const v0, #android:id@text1#t
=======
    const v0, 0x1020014
>>>>>>> 362867e... reset device

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/app/MzResolverActivity$ViewHolder;->text:Landroid/widget/TextView;

<<<<<<< HEAD
    const v0, #android:id@icon#t
=======
    const v0, 0x1020006
>>>>>>> 362867e... reset device

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/app/MzResolverActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 1506
    return-void
.end method
