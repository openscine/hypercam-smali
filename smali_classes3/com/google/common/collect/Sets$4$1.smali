.class public Lcom/google/common/collect/Sets$4$1;
.super Lcom/google/common/collect/AbstractIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Sets$4;->iterator()Lcom/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/common/collect/Sets$4;

.field public final synthetic val$itr1:Ljava/util/Iterator;

.field public final synthetic val$itr2:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Sets$4;Ljava/util/Iterator;Ljava/util/Iterator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/Sets$4$1;->this$0:Lcom/google/common/collect/Sets$4;

    iput-object p2, p0, Lcom/google/common/collect/Sets$4$1;->val$itr1:Ljava/util/Iterator;

    iput-object p3, p0, Lcom/google/common/collect/Sets$4$1;->val$itr2:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public computeNext()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Sets$4$1;->val$itr1:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/Sets$4$1;->val$itr1:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/common/collect/Sets$4$1;->this$0:Lcom/google/common/collect/Sets$4;

    iget-object v1, v1, Lcom/google/common/collect/Sets$4;->val$set2:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/Sets$4$1;->val$itr2:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/google/common/collect/Sets$4$1;->val$itr2:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/google/common/collect/Sets$4$1;->this$0:Lcom/google/common/collect/Sets$4;

    iget-object v1, v1, Lcom/google/common/collect/Sets$4;->val$set1:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIterator;->endOfData()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
