.class public Lcom/android/camera/litegallery/DefaultItemAnimator$h;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/litegallery/DefaultItemAnimator;->a(Lcom/android/camera/litegallery/DefaultItemAnimator$i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/android/camera/litegallery/DefaultItemAnimator$i;

.field public final synthetic d:Landroid/view/ViewPropertyAnimator;

.field public final synthetic f:Landroid/view/View;

.field public final synthetic g:Lcom/android/camera/litegallery/DefaultItemAnimator;


# direct methods
.method public constructor <init>(Lcom/android/camera/litegallery/DefaultItemAnimator;Lcom/android/camera/litegallery/DefaultItemAnimator$i;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$changeInfo",
            "val$newViewAnimation",
            "val$newView"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/camera/litegallery/DefaultItemAnimator$h;->g:Lcom/android/camera/litegallery/DefaultItemAnimator;

    iput-object p2, p0, Lcom/android/camera/litegallery/DefaultItemAnimator$h;->c:Lcom/android/camera/litegallery/DefaultItemAnimator$i;

    iput-object p3, p0, Lcom/android/camera/litegallery/DefaultItemAnimator$h;->d:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Lcom/android/camera/litegallery/DefaultItemAnimator$h;->f:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animator"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/android/camera/litegallery/DefaultItemAnimator$h;->d:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 2
    iget-object p1, p0, Lcom/android/camera/litegallery/DefaultItemAnimator$h;->f:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/litegallery/DefaultItemAnimator$h;->f:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/litegallery/DefaultItemAnimator$h;->f:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/litegallery/DefaultItemAnimator$h;->g:Lcom/android/camera/litegallery/DefaultItemAnimator;

    iget-object v0, p0, Lcom/android/camera/litegallery/DefaultItemAnimator$h;->c:Lcom/android/camera/litegallery/DefaultItemAnimator$i;

    iget-object v0, v0, Lcom/android/camera/litegallery/DefaultItemAnimator$i;->b:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchChangeFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/litegallery/DefaultItemAnimator$h;->g:Lcom/android/camera/litegallery/DefaultItemAnimator;

    iget-object p1, p1, Lcom/android/camera/litegallery/DefaultItemAnimator;->m:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/camera/litegallery/DefaultItemAnimator$h;->c:Lcom/android/camera/litegallery/DefaultItemAnimator$i;

    iget-object v0, v0, Lcom/android/camera/litegallery/DefaultItemAnimator$i;->b:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7
    iget-object p0, p0, Lcom/android/camera/litegallery/DefaultItemAnimator$h;->g:Lcom/android/camera/litegallery/DefaultItemAnimator;

    invoke-virtual {p0}, Lcom/android/camera/litegallery/DefaultItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animator"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/android/camera/litegallery/DefaultItemAnimator$h;->g:Lcom/android/camera/litegallery/DefaultItemAnimator;

    iget-object p0, p0, Lcom/android/camera/litegallery/DefaultItemAnimator$h;->c:Lcom/android/camera/litegallery/DefaultItemAnimator$i;

    iget-object p0, p0, Lcom/android/camera/litegallery/DefaultItemAnimator$i;->b:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchChangeStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    return-void
.end method
