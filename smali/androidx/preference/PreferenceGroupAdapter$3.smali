.class public Landroidx/preference/PreferenceGroupAdapter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/preference/PreferenceGroupAdapter;->createExpandButton(Landroidx/preference/PreferenceGroup;Ljava/util/List;)Landroidx/preference/ExpandButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/preference/PreferenceGroupAdapter;

.field public final synthetic val$group:Landroidx/preference/PreferenceGroup;


# direct methods
.method public constructor <init>(Landroidx/preference/PreferenceGroupAdapter;Landroidx/preference/PreferenceGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/preference/PreferenceGroupAdapter$3;->this$0:Landroidx/preference/PreferenceGroupAdapter;

    iput-object p2, p0, Landroidx/preference/PreferenceGroupAdapter$3;->val$group:Landroidx/preference/PreferenceGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/preference/PreferenceGroupAdapter$3;->val$group:Landroidx/preference/PreferenceGroup;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->setInitialExpandedChildrenCount(I)V

    .line 2
    iget-object v0, p0, Landroidx/preference/PreferenceGroupAdapter$3;->this$0:Landroidx/preference/PreferenceGroupAdapter;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroupAdapter;->onPreferenceHierarchyChange(Landroidx/preference/Preference;)V

    .line 3
    iget-object p0, p0, Landroidx/preference/PreferenceGroupAdapter$3;->val$group:Landroidx/preference/PreferenceGroup;

    .line 4
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getOnExpandButtonClickListener()Landroidx/preference/PreferenceGroup$OnExpandButtonClickListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 5
    invoke-interface {p0}, Landroidx/preference/PreferenceGroup$OnExpandButtonClickListener;->onExpandButtonClick()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
