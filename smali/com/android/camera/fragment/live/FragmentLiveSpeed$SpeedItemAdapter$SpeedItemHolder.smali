.class public Lcom/android/camera/fragment/live/FragmentLiveSpeed$SpeedItemAdapter$SpeedItemHolder;
.super Lcom/android/camera/fragment/CommonRecyclerViewHolder;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/live/FragmentLiveSpeed$SpeedItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SpeedItemHolder"
.end annotation


# instance fields
.field public final synthetic c:Lcom/android/camera/fragment/live/FragmentLiveSpeed$SpeedItemAdapter;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/live/FragmentLiveSpeed$SpeedItemAdapter;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "itemView"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/live/FragmentLiveSpeed$SpeedItemAdapter$SpeedItemHolder;->c:Lcom/android/camera/fragment/live/FragmentLiveSpeed$SpeedItemAdapter;

    .line 2
    invoke-direct {p0, p2}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-static {p2}, Ld/d/a/e6/f;->o(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v6

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/live/FragmentLiveSpeed$SpeedItemAdapter$SpeedItemHolder;->c:Lcom/android/camera/fragment/live/FragmentLiveSpeed$SpeedItemAdapter;

    iget v7, v0, Lcom/android/camera/fragment/live/FragmentLiveSpeed$SpeedItemAdapter;->b:I

    if-ne v6, v7, :cond_0

    return-void

    .line 3
    :cond_0
    iput v6, v0, Lcom/android/camera/fragment/live/FragmentLiveSpeed$SpeedItemAdapter;->b:I

    .line 4
    iget-object v0, v0, Lcom/android/camera/fragment/live/FragmentLiveSpeed$SpeedItemAdapter;->d:Landroid/widget/AdapterView$OnItemClickListener;

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    move-object v2, p1

    move v3, v6

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/live/FragmentLiveSpeed$SpeedItemAdapter$SpeedItemHolder;->c:Lcom/android/camera/fragment/live/FragmentLiveSpeed$SpeedItemAdapter;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v7, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 6
    iget-object p0, p0, Lcom/android/camera/fragment/live/FragmentLiveSpeed$SpeedItemAdapter$SpeedItemHolder;->c:Lcom/android/camera/fragment/live/FragmentLiveSpeed$SpeedItemAdapter;

    invoke-virtual {p0, v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method
