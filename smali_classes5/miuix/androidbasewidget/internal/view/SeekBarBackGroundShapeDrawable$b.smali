.class public Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;


# direct methods
.method public constructor <init>(Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;)V
    .locals 0

    iput-object p1, p0, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable$b;->a:Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lmiuix/animation/physics/DynamicAnimation;FF)V
    .locals 0

    iget-object p0, p0, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable$b;->a:Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
